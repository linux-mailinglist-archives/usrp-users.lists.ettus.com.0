Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f+rmKlpSRGoRswoAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 01:33:46 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA586E8A6E
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 01:33:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=OP8yrWdj;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=BGVHp6ub;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=c9R1ErPB;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07B0838669E
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2026 19:33:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782862424; bh=G4U5s7Nvht/2ZGsT5RrnXNOCZ0GprOWEVctE0NFvr0U=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OP8yrWdj1GsTpjbPqNDBWjn49PT8uL0Usr8x1d+Vsvg8lxlrw+vNXgwa8qLvfLGtz
	 4N5TRpMAJV5rp8yiTpQKwOGyPcZvAnXnS/aSEHvPA5jF6kc3jiChotlj+tWRgru9Ps
	 8wdSWf+6QJd/dpglvVXAix05uxE3QyxTc7HxnrhmdNraaM9qeD8mimyDOJ6wrkQNoa
	 vpDDsvgiZTF+k7/FkVsm8ZjyRk4wEjquZiO72Y9GKZZmmhePaqLwdpbzVlMcbC1oav
	 z5tVLwlXZ5G9rAShrQi121z79W8HgRkRm7sQta1ynA8auYiVvbOSrelshSwTbTJ1pm
	 1Q/aypq80gNZQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id EE8A23864D3
	for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2026 19:33:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1782862408; x=1814398408;
  h=from:to:subject:date:message-id:mime-version;
  bh=8g0Vgf055iOh/SShEsIuMhrQZ3ZTsk56h6v0x+wSCTc=;
  b=BGVHp6ubO34nuZbD34QYT3xSfkWVA/b880njzRMmOGhgaiD6YCi9pJb+
   TyAv/M5kHlhqwip2S5HVzw0R3KlN+06BNHhzJGmQAH10PnfL+W5HZ41qt
   tTSy9yqlvGQIowYnLmC8L4TvTFxue3NblJ8bdnCJu+RIjc7BJKCjE28x/
   M=;
X-CSE-ConnectionGUID: ZdKuQdu5QmOVb8d0ezZFyA==
X-CSE-MsgGUID: M6YegZJvRMmuuaONGH3pdA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="9538059"
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600";
   d="scan'208,217";a="9538059"
X-IPAS-Result: =?us-ascii?q?A2GxAQCJUURqjggBXShXA4QWgQRCAUWBbJZMgRadHIEQA?=
 =?us-ascii?q?1cPAQEBAQEBAQEBBwJRBAEBAwSEfwKNTSc4EwECBAMCAwEBAQEBAQEBDgEBA?=
 =?us-ascii?q?QUBAQEBAQcEAQICEAEBAQEBATkFDjuGTw2EB4EmAQEBAQEBAQEBAQEBHQI1g?=
 =?us-ascii?q?RwBATgRAUABPicEG4J6gh4HBAsHAza4d4E0gQGCDAEBBgQE2yoYZYFpCYFNg?=
 =?us-ascii?q?36Bc4JqASqBNQGEFoUygVVEgRQBQoIxB4R1IxxFg06CMIImehIbgSOBCoEQQ?=
 =?us-ascii?q?I0cgUQiAyYzLAFVExcLBwVegQgDgQZuMh2BIz4XNFgbBwWBHYFrgQOEeiMfA?=
 =?us-ascii?q?zl/gTB1WGYVMDWBAxIeCoFSgQwDC209NxQbAwSBNQWMIgdcFw+BS1JCWRMBM?=
 =?us-ascii?q?IJykkYuj09HgTWhRzQHhCCBYAYMoB8XqmyZCKN9hRoCBAIEBQIQCIF/UYEuM?=
 =?us-ascii?q?xowQ4JnUxkPjjqDac0VeT4BBwIHDwKBc5ACLYFQAQE?=
IronPort-PHdr: A9a23:H0+h6hcN48ppfwo4u63o30TXlGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:ogcO/KB98uYgnhVW/yXjw5YqxClBgxIJ4kV8jS/XYbTApDkm0WZVn
 GQbDzrXafiPYDT8fNEgbIu29RgGvcPRytRrTANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC9k/1WlTGhSAlhfrTLlbEILeZfHg3HEk8E39JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpMg064gE0p5qiaVA8w5ARkO6gV5weGzRH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauO60aCm0xK6aoD66vRwjnVaPpUTbZLwXXxqZwChxLid/
 v0Q7MboEV9B0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tQqJBMQVxye2tuz54yxGuU0i9YRAtjCadZ3VnFIlVk1DN4McM37ef2bzuIAhG52gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrJ/exmuC6KilwZPLvFabI5fvSHWMpYmEveq
 XjP7nr0GDkTOcaYjz2f/RpAg8eewHirAN9DfFG+3ts0sVCc9E4NMjgTSEayht+WqhWmV/sKf
 iT4/QJ19vJuqyRHVOLVQgaiuDuZpRMGQPJUEvYm80eA1rbJ+ECSAW1sc9JaQNkvtctzWjExy
 kKSlsHtHWUw6OTMESrNsLCJsTm1JC4Za3cYYjMJRhcE5N+lp5wvihXITZBoF6vdYsDJ9S/Y8
 TypsREymugqiOk13fW3pV3VsRy9j82cJuIq3Tk7SF5J+e+QWWJIT4mh6Fye8vtbMJuCR0uFp
 CFbw5HHtLheS5aQiCaKXeMBWqmz4OqIOyHdhlgpGIQ98zOq+DioeoU4DNBCyKVBbZ1sldzBO
 R+7VeZtCHl7ZyTCgUhfONPZNijS5fK8fekJr9iNBja0XnSOSON31Ho1PxLPt4wcuE0tmrs4I
 pCVbY6nCmwCYZlaIM6Nb75Fi9cDn3lmrUuKHMyT50r9jdK2OiXPIZ9bawTmUwzMxP/eyOkj2
 4oFb5PSo/ieOcWiChTqHXk7dAhXcCJjWM+u9qS6tIere2JbJY3oMNeJqZtJRmCvt/09ejvgl
 p1lZnJl9Q==
IronPort-HdrOrdr: A9a23:liHkqq9zvcTSPDuYjqJuk+Ffdb1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKRcdcKO7SdC9qBLnhOhICOwqUYtKMzOW3FdAQLsC0WKA+UyoJ8SdzJ876U
 4IScEXZ7PN5DNB/KXHCXyDYrMdKa68gcKVbInlr0tFfEVHeqtg5wB2BkKhFFFqRA5JPJw9FJ
 CNzMtKrTitdB0sH4yGL0hAe9KGi8zAlZrgbxJDLQUg8hOygTSh76O/OwSE3z8FOgk/i4sKwC
 zgqUjU96+ju/a0xlv3zGnI9albn9Pn159qGNGMsM4IMT/h4zzYKbiJGofy8AzdktvfpmrCo+
 O84ivICv4DpE85MFvF4ScFkDOQqArGo0WSsmNwx0GT6vARDQhKdvaoie9iA2Hkwltls9dm3K
 1R2WWF85JREBPbhSz4o8PFThdwiyOP0A8feMMo/g9iuLElGc1shJ1a+FkQHIYLHSr85oxiGO
 5yDNvE7PITdV+BdXjWsmRm3dTpBx0Ib2C7a1lHvtbQ3yldnXh/wUddzMsDnm0Y/JZ4T5Vf/e
 zLPqlhibkLRM4LaqB2AvsHXKKMexjwaAOJNHjXLUXsFakBNX6Io5nr4K8t7OXvY5AMxItaou
 WwbLqZjx9CR6vDM7zx4HQQyGGwfIyUZ0WT9v1j
X-Talos-CUID: 9a23:r0Ayw20F9oklr6BFz8s3XrxfKMwGb0TR0SrpJmiGAzZlELCHe3GB0fYx
X-Talos-MUID: =?us-ascii?q?9a23=3AqfWSdQ8zQJlNZljY1N8uX/uQf+I20qmhOmITq7A?=
 =?us-ascii?q?DptSNEgpfG2yFgB3iFw=3D=3D?=
Received: from mail-westusazlp17011008.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.8])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 16:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=STWkd6KazBwVMDMawjmrszc3eIORhxNvSeOz3toWtrjWHk/U/1ehbG2HRtnVuddmXwhVaok9MSeOewaXfxOhbBjNRHk39RJsc57nRH5dgq2N01JwR9JBAM/wcDV5UDYwkPswyrY6Y8GaZvfbwkQcQd5rx7Mg4pKfMOjOygNhXToNZjQ2oXJn4SjW2f9y02bZbix0lIKpX+yH0T6Jdn/kQ+ShqI+Z/RD56WapiQWlKdF/0A43paZbdbG95dhvSav69GMYZZ3Uq9DhaJ4fUx0aYk0jTjzX6TTCUcxkdu9Htom/DkQbu4JUQcWad9uzv85hVUDwj/IMPoYM39IjCGXzNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/9LARiUUlcE0RrWHgPO/KuqKYwIs0LdWgMGb/wz1wk=;
 b=VwRn9JnavBDPKsFlSksdtHqDWRzIQPFZwGUL+yGCTCCbVYL0eDNGW8OjKU9oH2CERcM/HJClNZUgAMBqcLqSRviMsVxLfDAsTf9/ACcIsxm5FtjQML9qnJq+FzKNXkP+gFOzGaBQ4xieSaO/GI3ofzZGeMt1xl7XJGNeKskRkvkXsqrJ+rOz70mMTLxLp5CLDb2hYXAmO5drRV6dPvkA8yUk//9Ds+/jFJp3yHYXD++RpbSAqBg8SRXaVuy7jW/N/ijxcveWcs7JZBLmb3e0s6fV5g4zK/Y9VYwYY0dUiPsdCl0ke1QS4Z4Vvkrura5D3+Hq3KoFBuEe6JVXbMBC/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X/9LARiUUlcE0RrWHgPO/KuqKYwIs0LdWgMGb/wz1wk=;
 b=c9R1ErPBnstLVJlaSaiMe0fS3LFZNobiJQbm66DJSrhQnxGRlu4EVvIi0b/6UfZENin/hD0W9H+8CGRo6Y0aqGpn7Q25/oDB67TKtvVsfdGo0g9UluoixMkzRCnu4U+tAb89n+oZHVCCtZvHV8SCOodJnd5z3nKEKpUbW0Ii19A=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DM8PR09MB7415.namprd09.prod.outlook.com (2603:10b6:5:2e0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 23:33:24 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0181.008; Tue, 30 Jun 2026
 23:33:24 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFNoC build with TX FIFO
Thread-Index: AQHdCOeSaclwuRlUrEyueQFJgPeIyg==
Date: Tue, 30 Jun 2026 23:33:23 +0000
Message-ID: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DM8PR09MB7415:EE_
x-ms-office365-filtering-correlation-id: 5e8fffb1-b52c-4e25-3ef5-08ded6fffa5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|23010399003|38070700021|6133799003|3023799007|56012099006|18002099003|8096899003;
x-microsoft-antispam-message-info: 
 bbOn1q/Q+6mXzf+QOms51NIzgLzm+913xOi9nK5h1CvHCtdF4cAMFjm56W5v59N3MzyZO209joMszSGXOr/81XR9c5ZFM2JK66SdXrbJ7IohJjV3H6jXB0ATbu1VDOhnf1SlDyS+ufQTqe1TljLDHsweVsEDJcr+jImQEeMHLdH8B9wYYwCcFmr7oQ5CtEuNTiKDs1xpGfH5uoF/ehFw+scUoBWc2vQFRedZWbwirDfcl7VtDhEGLH5JRM4Di/MePDpPCZ3z4kYgqb5puwsBavvtSkmFl8Ks9vfi5OUBCBR0bs/bDbsnrq0NPKZFlfU/gCmhjPFwnI5a5phLNX+TkPemi7y0vMtlkxTsh5Oj15H1pX5eYAZSyEtib2BdrhlnlQscjBo3e5dWKmdcdHDUcC7DERCag1xem+bNslauz59N0RclWSHVXG/y/LN7GN+lT8jYmDNYTIEJGXeYH8cOpmFfKeQuRXxDRL5KvMerRn814C/SUz51CjEozWGCzviH00/Y/WkvWG1kZahwO3pi4rmriB7QnwNNbNBzKraBded/l3M6bbcZhuQ+XTMqiMKN5kIJTLzYWGMeNP/AKV0kpPlt9maKYFH4UXW2+5DJADlJ5R3QzmiifenP8AfiDDlGUega2oKzx0GjQR7/kWdfFrbB5aIMdzqXfTHo8ylV9R0t7lf6f7UKQqUQ7FigiZOYj2TTqLOw5VfOQcASPSEmLX6NPBAkbG2V5bVk68/D4JE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(23010399003)(38070700021)(6133799003)(3023799007)(56012099006)(18002099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ihbChcXaL2FmfvKa1CwF3jgTRSljRCkMKmELJXGaDQMiIUbdsZsK101FYS?=
 =?iso-8859-1?Q?lGTYdsfHOMqo0fdZhbPkXhrMMPmwNIZ7PtRptWex6IpNCSNOlVjoI1pKeV?=
 =?iso-8859-1?Q?J4kYSso5Sb9wWPxWZXOBPEDwqK5tAC9g6Tq83z2QCgwDulek106Eq5+L+A?=
 =?iso-8859-1?Q?eNigmwrhlFbdtzqcwCTLsZMAn3yo813HEsZ/bFMXph4ZjWQn4j8u+br+Ko?=
 =?iso-8859-1?Q?hbSh5vt9AIYZp8rX+qjWw/SNFlLC4RQIzrtj1WqV5Kv0UQJx92Jwy4FMZ9?=
 =?iso-8859-1?Q?kQWf45G5pKT6dsuitbX2b8VXbsfmwe6VVJSQB2S5PIoMAeKR0Ze/cjvrCG?=
 =?iso-8859-1?Q?Sz1qPcgza172w2x5jpChCWCeQMU8vrHjAj3TEIAdP8TFth+GL9kynadfa8?=
 =?iso-8859-1?Q?Yqk86S76tILCSBR66A8lYWs/txYE56N1l5dMYd4zcKg4KI8IazipInsH4I?=
 =?iso-8859-1?Q?aCqOb3bdp5/PXhN6fvpUGNEn2ad06PTvLk/EZcRnrmOyjNfgFW53+Sb3TK?=
 =?iso-8859-1?Q?RFjuP+98f/IJ1IlnbMje1POuBEq2wYXeLreaOC2DZ7G9HWV9THwb5JfADJ?=
 =?iso-8859-1?Q?yuS9XLZphG+Mduhdb+m75qJeT1mHyhd5M0+nUBjcn80yRCj2mvYlYA8Txi?=
 =?iso-8859-1?Q?YRVDuvvPIu2UYjKw8lsWlqLhVzAbj0gvUswv6fJnWAyQgMY0zSU+UTub2w?=
 =?iso-8859-1?Q?pLAXxvZZ/795fALcuCDP3HaKnfhlkLbGQW4nbK6op0o93Ma5BAW5ui75DE?=
 =?iso-8859-1?Q?XTAboBt/tFuzVAhY3RpIHvNh/PHBWRHakDLDOVSHLJ8gcAjhNhW1ulpwRA?=
 =?iso-8859-1?Q?YG9a0vJXfTJWqiixhfKB4KrElfFfk+XZ91TEpGzSxcR5RuyeavyOA/Slay?=
 =?iso-8859-1?Q?G+jjZ+6L+ZVLZl9Q7P0eRg1PWapZ7tqV6ycr+ZiyEGWjqrny014p0C2n8m?=
 =?iso-8859-1?Q?UnOm2Zkt3ir8dt+ryeCJBNz/TCIp9KV578MN+wQd8YGfYvRpkTzClIGZeE?=
 =?iso-8859-1?Q?4JfHSPLuzYq75s4UtlYT+VH6B4Xv0mYY6myE3RzWCJqgTLzXrqC8wJ2t6p?=
 =?iso-8859-1?Q?8cyC4A5wR11d4BpYF2x1ff+1TIYs7iwHtOmY394eo2A4/pkEDGBES4pTVy?=
 =?iso-8859-1?Q?q788IwqJTJI9y4bKzNJIYyrsrvKnu3uLU+xsXIvMMeaauiVl9PPpVFE4K6?=
 =?iso-8859-1?Q?RGyrkJ93k6dJcqLZNnKpRyAv23NmdJp1se+iHYm4DYIGGLWCC+Rbp0MDou?=
 =?iso-8859-1?Q?CEodpVy+5HI/wf5M5IsnpXuZa6WRPKcqm0dvaIhpYBws9me55s346i5l5u?=
 =?iso-8859-1?Q?NEyBaQ+AIrtGHzw/tbGzTAw1gCfgxCOBkaT+GMQm0kkOnDDCZYOgS1xehM?=
 =?iso-8859-1?Q?YIK7wLNLxEg1eS2jDebctHnHlr1t5mxnqFHPbusnAtU8MMxmiH7b2NgIxk?=
 =?iso-8859-1?Q?uj8xBcz1Iq6dtzp3rA1s/QR1m6DSu5e99VvbWQpAloZ/R12+8Z85A36bEA?=
 =?iso-8859-1?Q?CaTh2V09cVDWMG+PGAWzPL1vYLsro9VEaS77vHZn9trmMvl4AfybH55xlL?=
 =?iso-8859-1?Q?NS9hZkzvcfzCLwGNSzYI5oxUoRHD7sXtHb1CoxuC8wnvxrEeCTXwKaLXO9?=
 =?iso-8859-1?Q?NNVbvZWaaxvIhqUtWGO0oilxl3fiCuBYSWAgd7nX03hQ3fTxUXF5+yXDMe?=
 =?iso-8859-1?Q?1Ux2pq+m4AEjuUxvaiejnbs1O34MCBBtpFC/+3mCotIARY7BmLG2qB+rgd?=
 =?iso-8859-1?Q?8XSDCvjHU35O3EjI0Xh+yljuzCW6P+eWmSeUd6g3yNenGP?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	ActOzlazacv94/RsXfW2lGcMN23rGBmBdc5GtVbuAa/5f5l/mARY8MflgUJ9pTH9tSant818pKAIVDv6xGEi+O+EDUgGCKiVjggeX9lOAFGU8ujwCS1MseZyRmLUvyMC+Q7T7YW3oY2KyEf/AZZU0CNsKleE9ouGTyIUxVAt3lNMgIXq6jQfsMlvSo7EXCEWqn369tJIkRNHDtfDHmpos+5DSpusEKXsWRgpFKdeQ3ujPpu7nUEqz4W3xMUswdKy83HpHkj8CLZQC4wRo80TJCwGxAGhRnW7nEh9cFSrHBvRG5iLkmZCaUbWeuUqMAr5Nh8XCZ1U/GHsMrtoxhifvg==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e8fffb1-b52c-4e25-3ef5-08ded6fffa5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 23:33:23.7927
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR09MB7415
Message-ID-Hash: NCFEANDXUQMV6ZHZ6DFZE237RDFS6ZPY
X-Message-ID-Hash: NCFEANDXUQMV6ZHZ6DFZE237RDFS6ZPY
X-MailFrom: prvs=634ef1a69=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 RFNoC build with TX FIFO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTDQSKEM5PLNCUQBQHLLSO34FRH4L6MU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5553017917686517154=="
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,aero.org:from_mime,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CA586E8A6E

--===============5553017917686517154==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72SJ0PR09MB9126namp_
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
I am trying to work around the underflows on the TX.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I added a AXI DMA FIFO and rebuilt.&nbsp; As far as I can tell the yaml is =
OK, but when I load the new bit file,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I get an error:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).</div>
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Here's the .yml file.&nbsp; Note that I removed the RX DDC to reduce the FP=
GA congestion.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
-----------------------</div>
<div class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# General parameters</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# -----------------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
schema: rfnoc_imagebuilder_args&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Id=
entifier for the schema used to validate this file</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
copyright: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Copyright information used in=
 file headers</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; Copyright 2023 Ettus Research, a National Instruments Brand</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
license: &gt;-&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# License information used=
 in file headers</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; SPDX-License-Identifier: LGPL-3.0-or-later</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
version: '1.0'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # File version</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
chdr_width: 64&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Bit width of the CHDR bus for this im=
age</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
device: 'x440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # USRP type</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
default_target: 'X440'&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; # Default make target</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
inherit:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - 'yaml_include/x440_radio_base.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - 'yaml_include/x4xx_x4_base.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; RF_BW: 400</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ENABLE_DRAM: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; NUM_DRAM_BANKS: 2</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; NUM_DRAM_CHANS: 8</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; DRAM_WIDTH: 128</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# A list of all stream endpoints in design</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# ----------------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
stream_endpoints:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep0: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Stream endpoint na=
me</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes control traf=
fic</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Endpoint passes data traffic=
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; # Ingress buffer size for data</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep1:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep2:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep3:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep4:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep5:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep6:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; ep7:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; ctrl: False</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; data: True</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; buff_size_bytes: 262144</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# A table of which crossbar routes to include</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# -------------------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# Rows correspond to input ports and columns correspond to output ports.</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# Entering a 1 includes and a 0 removes that route from the crossbar.</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
crossbar_routes:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # &nbsp;eth0 &nbsp;eth2 &nbsp;dma &nbsp; ep1 &nbsp; ep3 &nbsp; ep5 &=
nbsp; ep7</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # &nbsp; &nbsp; eth1 &nbsp;eth3 &nbsp;ep0 &nbsp; ep2 &nbsp; ep4 &nbs=
p; ep6</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth0 (QSFP Port 0=
, Lane 0)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth1 (QSFP Port 0=
, Lane 1)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth2 (QSFP Port 0=
, Lane 2)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # eth3 (QSFP Port 0=
, Lane 3)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1&nbsp;] # dma</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep0 (radio0.0)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep1 (radio0.1)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep2 (radio0.2)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep3 (radio0.3)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep4 (radio1.0)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep5 (radio1.1)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep6 (radio1.2)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0&nbsp;] # ep7 (radio1.3)</d=
iv>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# A list of all NoC blocks in design</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# ----------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
noc_blocks:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; radio0:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; radio1:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'radio.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; duc0:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; duc1:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'duc.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; fifo0:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; fifo1:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; block_desc: 'axi_ram_fifo.yml'</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; parameters:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; NUM_PORTS: 4</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbsp; 32</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbsp; 128</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &quot;300e6&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; # Create 4 non-overlapping 2 MB buffers</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: &quot;{32'h00600000, 32'h00400000, 32'=
h00200000, 32'h00000000}&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: &quot;{32'h001FFFFF, 32'h001FFFFF, 32'=
h001FFFFF, 32'h001FFFFF}&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# A list of all static connections in design</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# ------------------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - srcblk &nbsp;=3D Source block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - srcport =3D Port on the source block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - dstport =3D Port on the destination block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
connections:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF A:0 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep0, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_0, dstblk: duc0, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_0, dstblk: radio0, dstport: in=
_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF A:1 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep1, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_1, dstblk: duc0, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_1, dstblk: radio0, dstport: in=
_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF A:2 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep2, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_2, dstblk: duc0, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_2, dstblk: radio0, dstport: in=
_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF A:3 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep3, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo0, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo0, &nbsp;srcport: out_3, dstblk: duc0, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc0, &nbsp; srcport: out_3, dstblk: radio0, dstport: in=
_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; #</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF B:0 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep4, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_0, dstblk: duc1, &nbsp; dstpor=
t: in_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_0, dstblk: radio1, dstport: in=
_0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF B:1 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep5, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_1, dstblk: duc1, &nbsp; dstpor=
t: in_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_1, dstblk: radio1, dstport: in=
_1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF B:2 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep6, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_2, dstblk: duc1, &nbsp; dstpor=
t: in_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_2, dstblk: radio1, dstport: in=
_2&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # RF B:3 TX</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: ep7, &nbsp; &nbsp;srcport: out0, &nbsp;dstblk: fifo1, &n=
bsp;dstport: in_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo1, &nbsp;srcport: out_3, dstblk: duc1, &nbsp; dstpor=
t: in_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: duc1, &nbsp; srcport: out_3, dstblk: radio1, dstport: in=
_3&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; #</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio0 }</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: =
gpio1 }</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # BSP connections are inherited from YAML include files</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram=
0&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram=
1&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio0, srcport: out_0, dstblk: ep0, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio0, srcport: out_1, dstblk: ep1, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio0, srcport: out_2, dstblk: ep2, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio0, srcport: out_3, dstblk: ep3, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio1, srcport: out_0, dstblk: ep4, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio1, srcport: out_1, dstblk: ep5, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio1, srcport: out_2, dstblk: ep6, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: radio1, srcport: out_3, dstblk: ep7, &nbsp; &nbsp;dstpor=
t: in0&nbsp;&nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# A list of all clock domain connections in design</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# ------------------------------------------------</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - srcblk &nbsp;=3D Source block to connect (Always &quot;_device&q=
uot;_)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - srcport =3D Clock domain on the source block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - dstblk &nbsp;=3D Destination block to connect</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
# &nbsp; - dstport =3D Clock domain on the destination block to connect</di=
v>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
clk_domains:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc0, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: _device_, srcport: ce, &nbsp; &nbsp; &nbsp; &nbsp; dstbl=
k: duc1, &nbsp; dstport: ce&nbsp;&nbsp; &nbsp;}</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; # Other clock domains are inherited from YAML include files</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo0, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; - { srcblk: _device_, srcport: dram, &nbsp; dstblk: fifo1, dstport: =
mem&nbsp;&nbsp; }</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
--------------------------------</div>
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

--_000_SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72SJ0PR09MB9126namp_--

--===============5553017917686517154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5553017917686517154==--
