Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WERfMZnBqWnNDQEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 05 Mar 2026 18:47:05 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD68B216732
	for <lists+usrp-users@lfdr.de>; Thu, 05 Mar 2026 18:47:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00AE7386583
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2026 12:47:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772732823; bh=e4tASzwM7P1AWbmTVviV5VFBLfLpGhIDqcneRY9JPb4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PJoVLeGmu+zS8iHzT4iHFuAwaPM8T+0r6MEpgKj+ncGzAcembjnwt/o1lcp4SWtba
	 HMPcr87Ns4W3Ra0LLLT+JkKwhNKDw1mF7Aw6pNefP57r7iKdPIEE/wXY12bSiKgLso
	 fQ9AtbbxTltzuT9Ch0VHKJjl2GT6Nzi+yWsflSSuNeb2FVlMtEmtEW/F78Pnv0W3Qw
	 xMKVaqhOa/NU0BtmVfrC88u06U4bqjnH4LqD5UknRyYo2DaqCBhJF4Emc7299a1tcX
	 RuXmEwjLXSa1fmGMtQQK2YEc77+Znxvs89uwH9wIXwq0Bg6dvk68YrXbjdVzbTKpzi
	 S3I6Y+Asevk7w==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 56695385B65
	for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2026 12:46:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="hOzGg0de";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="OQtPdOj4";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772732775; x=1804268775;
  h=from:to:subject:date:message-id:mime-version;
  bh=OtI9pcDI9eSdEXYrX0YXzIGOAl3V0emWEFC7elFdmok=;
  b=hOzGg0deXXBWbTgeCDri8C5BIonCnXKfhIA2+8E4CdAF7U/obCOnva+t
   9fCuxpu7vduaN/Ymo1ulj5PCYItDDbhPeqKEPieSE1RO6oAmW3H5cvOwa
   Rq0TORj29mXk7rEEURKggulIoThtVkDXxt81jqtjWMtGQWI6XANp9XDuc
   c=;
X-CSE-ConnectionGUID: juW/OK4xQr6h+kZSo5wD4g==
X-CSE-MsgGUID: Gm6zelBHSK+Vfu4QBCLvdA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="8657220"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000";
   d="scan'208,217";a="8657220"
X-IPAS-Result: =?us-ascii?q?A2F+AgAxwalpjjcMXShSBQMdAQE8AQUFAQIBCQEVgVACg?=
 =?us-ascii?q?TuBBEEBQ4FsrhKGVxSBEQNXDwEBAQEBAQEBAQcCFBMqBAEBAwSFAAKNISc2B?=
 =?us-ascii?q?w4BAgQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO?=
 =?us-ascii?q?4ZPDYQHgSYBAQEBAQEBAQEBAQEdAjWBHAEBOBEBfycEG4J6gh4HBAsHAzarK?=
 =?us-ascii?q?YE0gQGCDAEBBgQE2ycYY4FnCYFNAYN8gXKCZQEqgTUBhBSFMIFVRIFXgjCFE?=
 =?us-ascii?q?g4bRYNOgi+CJnoUHYEohhOEMIcegUQiAyYzLAFVExcLBwVegQgDgQZuMh2BI?=
 =?us-ascii?q?z4XM1gbBwWFSg+KVYETgncDC209NxQbAwSBNQWNFQdVPoMvEzGlM45flGM0B?=
 =?us-ascii?q?4QfgV4GDKAeF6prmQapFgIEAgQFAhAIgW8LggQzGjCDKlIZD446g2fIC3g8A?=
 =?us-ascii?q?gcLAQEDCZMJYAEB?=
IronPort-PHdr: A9a23:9gY6CR+N85f5sP9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:xbGTTKkVhROq025w4C5hInLo5gyJJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIdDzyBb/eKYWqkc4p2aYWx8BwCv8eGytJrTAdpqXthQy4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8ykkjclkYZKlUbGeYkidfSc9FWF5z0slw7Vh6mJRqYDRKxuXv
 t/vqNHoNlag2jplWkoZ8KvrRClH5JwegxtG+AZlDRx3lAWGzSdNV8pCffrZw0bQG+G4IMbrH
 44v85nkpgs1zz91Yvu5n7DydFE9Q7K6FWBiXVILM0QKqkEqSh0ais7XBtJFAatko2zhc+RK9
 Tl4ncfYpTEBY/SWwLxFO/VvO3oW0aVuoNcrKJUk2CCZ5xWun3DEm52CAKyqVGGxFyke7Wxmr
 JQlxD4xgh+rhf+Jh5WYFvlVnJojb8rZB4RCpV08wmSMZRomacirr6Tiz/kI5A1o1+tzRa6HI
 c0EdTBocRLMJQVVPUsaA44/m+HugWTjdzpfqxSeoq9fD2r7kFQ3geOraYCTJ4HiqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXoqKM12gfLroAVIDITC0m2pdOZsW39ZdxCd
 3U+0Q4woYFnoSRHSfGmBEfk/xZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesCDV0rKCOE3uP8q/N8mvrY3BIcCkFeDMOShYD75/7uoYvgxnTT9FlVqmoktnyHjK2y
 DePxMQju1kNpcwW6OKc3gzXuijyptvKfDUyuxr7Am3wu2uVe7WZi5qUBU83BMuswa6cR1iF+
 XUNgNSD97oHH5WVzXPVGb9VQezv4OuZOjrBh1IpB4Mm6zmm53+ke8ZX/S16I0BqdM0DfFcFg
 XM/WysOufe/31PzN8ebhr5d7ex2lcAM8vy+CJjpgiJmOMQZSeN+1HgGibSsM5/RfLgEyvplZ
 cjznTeECHcRE6N8yzSqD+way6dD+x3SMVj7HMihpzz+iOL2TCfMFd8tbgHSBshnt/nsiFuOr
 L5i2z6il083vBvWPnOPqdZ7wJFjBSRTOK0aXOQNKLTYeVM4RjF/YxITqJt4E7FYc21uvr+g1
 hmAtoVwlTITWVWvxd22V01e
IronPort-HdrOrdr: A9a23:uTh1ZKFAvlR/GBXGpLqFb5HXdLJyesId70hD6qkvc3Fom52j/f
 xGws5x6fatskd2ZJhSo6H4BEDgewKryXcR2+Us1NiZLW3bUQeTTb2KjrGSigEIeReOkdK1vJ
 0IG8cRNDSaNykYsS+O2njcLz9W+qjkzEnHv4fj5kYoYRBhaqlm4Qs8MQCGD01wSjBBAJoyBL
 Cc6sBEqzfIQwVeUu2LQl0+G8TTrdzCk5zrJTQcAQQ81QWIhTS0rJbnDhmxxH4lInly6IZn1V
 KAvx3y562lvf3+4ATbzXXv45Nfn8ak4sdfBfaLltMeJlzX+0uVjcVaKvG/VQIO0a+SAWUR4Z
 jxSiIbTotOAj3qDyGISFDWqnHdOX4VmgTfIBmj8DDeSIXCNU8H48Ytv/MiTjLJr0Unp91yy6
 RNwiaQsIdWFwrJmGDn68HPTAwCrDvAnZMOq59hs5Vka/ptVJZB6YgEuE9FGpYJGyz3rIghDe
 l1FcnZoPJba0mTYXzVtnRmhIXEZAVFIj6WBkwZ/sCF2Tlfm350i0Me2cwEh38FsJYwUYNN6e
 jIOrlh0LtOUsgVZ6RgA/ppe7rCNkXdBRbXdG6CK1XuE68Kf3rLtp7s+b0woPqnfZQZpaFC6K
 gpkGkoxFLaV3ied/Fmhqc7jiwlaF/NIgjQ9g==
X-Talos-CUID: 9a23:GOY2EmP2I/O/JO5DWjRYs2k3RtAcaCPdj3TiGEjlFko1R+jA
X-Talos-MUID: 9a23:4WT/6woKkowzw3zKuMQezx5natVl546OM2NOr5sb5/CuHghuNx7I2Q==
Received: from mail-eastus2azlp17012055.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.55])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Mar 2026 09:45:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jIhGxDgrlwvHVypQAbENevinpbDhAJvlZvgHrzHzxDVliL3o8jQO2GvXvF3rquMC2JjRT/0qrF8QVfd+HIa5osc7OcxnNJhxHAzXbl5yeM2jWQXCQIOUn9CHq6pPlflwgI4v0DQKfjB1TuBQEqmoGP47t21rYDufLe38/ezsEGjDmNymVtmbY6n/tfFDaitUjIZUg38FjeTpGaLgfysfmLcRdtDgxYXh6mU6hDPY1H04duXXOQi78hZEXB9JvSLOh0Vd4OqmjvkrBHvmM0BBC5kydYhR2/2/1FeHTNgdkhUpFmVrZeKqxYVQoSEeOTMvnw8sSrqU45jyvokHMsdG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HnE2EYctcWaaa8dWr8CKl07pBL/nIyOmGPIqzEC/FiI=;
 b=RXIT3i8FH0C9274j1GVb6xXWezjdXLAbKdLQrd0BVD0JvQbfhPtgb0Y4Wit6hp4vUQvuvqPxwXSwGH+tgov+ECjcFeHgxdI/GdMxFh7t7++d6oZomJHTzaD2DacxIOQybhPeTsAowkTvl4Fg7I2ZOTDHExd9Dki9EihCLLdz5BqBlqvY3yLUZVJPg31Y4UXO7cOSEXfp4HoZCHIKOeSvbXKUb0EY1FISMyR5GqtCawl1eQJsApLG0HOqxmIuaLGar+U30W/lGvH7xYGEd3NIP5C+thhCs/pT4UI38VFTfvyjYytaCPcpNb3apd8XEsOZd4ZtNoq7OonsUkw7/T6UCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HnE2EYctcWaaa8dWr8CKl07pBL/nIyOmGPIqzEC/FiI=;
 b=OQtPdOj4RI1HJmq78z3ogBclizFkj3lFE7TOX3WXxNY4tMtQXdvvQQtbiRFc/rVYSJWy+9Qi47j0gD1oWjeWlB1D/2x9bZfZu0AnsH1kGWuGqNSsRotnrhEnglwxSZf2cXGiIuQaoBpHiHWcoNov5RhVJ0I8zlEsyHV7bAp8cpI=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH8PR09MB10192.namprd09.prod.outlook.com (2603:10b6:510:18a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 17:45:50 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9678.017; Thu, 5 Mar 2026
 17:45:50 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: IP locked for X440 RFNoC build 
Thread-Index: AQHcrMLQBGp+5ilY60icOpb46GQ1Og==
Date: Thu, 5 Mar 2026 17:45:50 +0000
Message-ID: 
 <SJ0PR09MB912699CCC9BC55341AD91928EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH8PR09MB10192:EE_
x-ms-office365-filtering-correlation-id: 0a087c0f-88df-4c0d-b483-08de7adf0a88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 LZ7y+K9Dx24Ky0yx3qgvvOS4m/aESLOdfQ5XaaB04Cp/eoNlaxrjplZ8zHfmhfd585aGw5nm/g02REpzveB1QKOVdYIedcEOg2Sp37kuCIg1xwsoWQzuZgHn2CYVgcRbfpNnREVk21liMHAMrtbKbkq65+EeziCPpe70wx4zhWP7irTm2vRJt9ujynFt243EArLcR9+hFn87vK1bwmEmKCPsBssllWeb1BABd5cvgixhz2iCERVnLXWmaPK2crkqngOeh0Ad+yG3cGl2f5gJoQjnDjnyfb48+bxXio31vUzC8MySgnVrc8s3NXvJmpuDVio8wyTvcR3ZXzYPgbMHkPj2YC4p+7lnpbiwjqCb3Yc1E5K9emuEkGvPoPJP6tdLRMqFDJAdnuXWys7wMv5bbg2XFOiKye92beBiA4+N/0iBB67GIqBRbgPeDDNgR4vcvtC6q9hdQ8indZ/FlEkY9prFCB3P3l3MdmqKy2boddUvc42En2mYseE4YfEiycQqJl6JmyFju0jX12o/VCOtpHz9UwkBq5iy/STQE3P58DX1tL9VSPkJjwOsS0454cJdtX6BSXCI/Sjkmi1R1ic54WTRuunzRlFbmyun4JsYLa+4UPNyarjVn1n6c5hDJJHOK0mluD4iofh9LlVe+2R01KCmtRZ3J19uWRVA9pPRew5ChVn6/KZWbjx8mmyvoYj/dPCQfdGApwLZBpOlnrWhOsRRTjB72N7Kl28iXqabeXhtFwVPfwzo2W8lZMzxfpRSe28w5utC4mkM8D7OoGYLI5cHKgVXvnzdrMUpR0laG5w=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?eU0beYhlzDP3sMgAHOpq4FjGO/HP5eqP/uTwwxcVXxBa+L5toQi2fnQo?=
 =?Windows-1252?Q?y+uQ0YuxttZEpij4GAt981460vkSFDY3vEhOoxVEaMw6f7hgQC44XMJv?=
 =?Windows-1252?Q?DcWQPe1deRBleHtR+H15BIHK2HFk2nwHSkCq9y2u/mgPTD8qpSKfyOL/?=
 =?Windows-1252?Q?OhsmEGJPBSwYoXRpF/4WZC6WfBFVyE0g8uitSOeGdhTuf8GE7s6km74K?=
 =?Windows-1252?Q?7Poey8RUBxfyFnmsOTSsu11+R0aFDnibaTEdDdHkCpGapS0ewwxwpm23?=
 =?Windows-1252?Q?743n6vcKTQw/LxpOJer88pmuR+k/KKW2QfMZ2gESKCoqWJnlceRmXIxv?=
 =?Windows-1252?Q?T/C0DG0Y8KL7IatTDwGyer9K0aH2rvYp15Vpk0tLmo0oiNuEb63Fy9Iv?=
 =?Windows-1252?Q?YPbOM0IB+q0A9PWF3XlELcIW/16kO5IE6e6yy4tNKDGO78qelYWzeKxn?=
 =?Windows-1252?Q?sBivDIG6SOLom9fPl9EuW7znexHRnObjzCJx2x0dCM9OFTiq8g60IFnX?=
 =?Windows-1252?Q?fT7P336vI7Z5qrss5hPFGWNQ/4nP3UTEpIXtPqIVLAXgXg0qAATbWikB?=
 =?Windows-1252?Q?pLx/E8ebsaaCbfYLxgT0ncCPQlPPYq7e1YxBo7ItO5KTE/DFQ8e1XjNF?=
 =?Windows-1252?Q?F7VD2H7ksTQiMwJS/9MNr4IXU3L2CwyzC9YmhJQONC1JjA68qSbTsdAr?=
 =?Windows-1252?Q?SVuYgOe0M5/ZWj7zrULDLL2YF0w3pS6nlKkhHqzvrNkTDkkGjcrVUwx2?=
 =?Windows-1252?Q?Z7sx5ty8M8s7rB9ruaQFrUQ3M5XobRzn5/FAjJo7/THvTyUPyzolSsal?=
 =?Windows-1252?Q?jJQ5LXGvi8FC7+QJ5PcIUGUY5Ypdoaamjt2muexj+aVr54MVfP4Qoanj?=
 =?Windows-1252?Q?SDfwubat0GceGlToyDh/ejOHMMW9sxYBDahs7zj6QvPDnwojHe4alZP4?=
 =?Windows-1252?Q?HGtDBdSeBdWjJ8MofzJTfqyFV9eWjmfFEDLDA+dQxVtyihCZWqwvKweP?=
 =?Windows-1252?Q?/A9VwJgirPacpVAu5kiSQhut04J26jTv9xGNR7jsDLLgp6soEZhHqz3v?=
 =?Windows-1252?Q?CxN68KWIIqZxEpIhBIDIRHCuarCOadH2vWBJHm3N5kdPs3DZZ2nx3bZD?=
 =?Windows-1252?Q?GTqtuu2aNVK8BEO2zVW3U8w8jia5j4ykv1OLFeQrXG4yg0gvJviqPpyp?=
 =?Windows-1252?Q?2N4vxyEW3WxU8TALde+70ifK7zM9qRNcjJE3pUxE1l7QwgkxrsSBQHL7?=
 =?Windows-1252?Q?rMMm1ohY4JOuqYz4e/AzXA9myNyBFmOdW8SEjYzaukKESJ4GizdPkIRY?=
 =?Windows-1252?Q?j7sgLkb+ang2W69WkIYUcdBXPmFtvknKDXvsk7WtA5tx3FZspQbSxP1R?=
 =?Windows-1252?Q?Mj7kzE4Pz6HSmYey/+n/RQ4i6cHGH9xMsTuk6/n3cBsdzP9vWdT95BbB?=
 =?Windows-1252?Q?J4KnF+2cXk5veLlCBRzCIqVvROX6QCO5ZPihus7ejGWPlamGQ20Xi2Um?=
 =?Windows-1252?Q?bs45i+e5fXTD8ZmUCgTS/xjALOA++qn/s8JcO53sesDjkXF4MVN6SeAT?=
 =?Windows-1252?Q?A/8ikjPAHCPL+i/Aud63zJPmuGKK1ObMsqyxZSe0BRvwMsfn57X3qjzH?=
 =?Windows-1252?Q?gWc4aO99QR6EvjtQpe5X8soSTk5Yi5h5InF9mqlGAeG4M0KaJQFOKce5?=
 =?Windows-1252?Q?IpkIicMAAatabp3ERZWpuF9R2CB7WIrIunUqf4FLqbZ2wWtYO0pNd7as?=
 =?Windows-1252?Q?vwo7mFB2ipspaRzxoyphFABs+jZkeKUfazwhHlUyU61lhv7ucB/1wrFT?=
 =?Windows-1252?Q?5Q3Qb/XRn1EMcMFzY33M5iCL/mkMtwJvheNtertM8QZ/5Dew?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	K5MHKJFsTGpKR/32BkZoJZ9dCN6p/T38WjZHFg0NEGB6DruMG9D/C1h4PjqCGgBIBKnAKZKNeR+yHxZFCJ/g6eiodMI+9ng9WAMs6eGY3rdsYtsSYDm94nSRj6kTU1WkdnOUImq2ldHZytn9idC3q4vDZ8b9h0K6zJBoct36AC0SBMEzTqLUU3D7zQ/DRNL0G65cssv+fdhNo/fq19y6j9zfcd23+tCA03yNXRHU6tJXgFqRQuhRp9QKiE90YMwJZlalSmVZWjp5OpMT6fOED6IuycI66c5Ld/SuRx2M4hHJLX6pyjB+31kH45CmVR+viHyQoesiNgpVkbmChNjiTQ==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a087c0f-88df-4c0d-b483-08de7adf0a88
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 17:45:50.6116
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR09MB10192
Message-ID-Hash: PQ3LFIPEELMSBNKDYRXJFJ2UKOLYAQFS
X-Message-ID-Hash: PQ3LFIPEELMSBNKDYRXJFJ2UKOLYAQFS
X-MailFrom: prvs=5175abe20=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IP locked for X440 RFNoC build 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M2Z2PPZUSCGTIYINZWIVTUDMBWIJENMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2195388927271169122=="
X-Rspamd-Queue-Id: DD68B216732
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,emwd.com:dkim]
X-Rspamd-Action: no action

--===============2195388927271169122==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912699CCC9BC55341AD91928EC7DASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912699CCC9BC55341AD91928EC7DASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I am trying to rebuild X440 image X4_200.  No changes to the yaml (yet).  G=
etting an error:

 [filemgmt 20-1366] Unable to reset target(s) for the following file is loc=
ked: /home/eg26648/uhd-git/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-2e=
/hb47_1to2/hb47_1to2.xci


  *
The Vivado version is correct.
  *
Tried it for both tag 4.9.0 and the master branch =97 same error

Suggestions?


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912699CCC9BC55341AD91928EC7DASJ0PR09MB9126namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I am trying to rebuild X440 image X4_200.&nbsp; No changes to the yaml (yet=
).&nbsp; Getting an error:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;[filemgmt 20-1366] Unable to reset target(s) for the following file i=
s locked: /home/eg26648/uhd-git/fpga/usrp3/top/x400/build-ip/xczu28drffvg15=
17-2e/hb47_1to2/hb47_1to2.xci</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;unorde=
redStyleType&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">The Vivado version is c=
orrect.</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Tried it for both tag 4=
.9.0 and the master branch =97 same error</div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Suggestions?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912699CCC9BC55341AD91928EC7DASJ0PR09MB9126namp_--

--===============2195388927271169122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2195388927271169122==--
