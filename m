Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLssFT3QqWmYFgEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 05 Mar 2026 19:49:33 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A81262171F4
	for <lists+usrp-users@lfdr.de>; Thu, 05 Mar 2026 19:49:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8E3C385F9F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2026 13:49:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772736570; bh=DpMVjY3mfJ9US7B3oHeB091UunvcB5jWHNDJPgEEuA4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xsBT0oAVzqtDoljRrTNwGItD2og7HiDUIZRQ7PW1SI57t1AcohvVg9DTNhEzQiXMy
	 PS9tkAyRMMpXRxHroDcuE7g0+BbulCPqKtMYdaOal2GfWriMn7n7eF12IqFvRQjVUz
	 B+yq/bti67p+g/YpCxGX0gk0UtRXZ/dWCXUXOOn7KqW/gp/GV8gChYzJK4E/nssynf
	 ZRi9CIZWnSf/UBVh2XkQUeLfGCUVXqBqEr6/NZXi8+hL0aJ79HkB5ZiSWHJzKIdO9f
	 ou8D6dYymC5qaxQ7CQA6nr2YMCde7imjn8xuNX2CJ6CIj+NmOIAg6ThLkm1HBKZOj8
	 dobKXvRRRw9xg==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F01C385F9F
	for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2026 13:48:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="oPA2z7jE";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="UOGAwglM";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772736499; x=1804272499;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=AfO9Kukf/5Uk0+EMFNnMiicox6/19N5UW0VRnDlqRpQ=;
  b=oPA2z7jEfgEav0JbuZg23g5vO7EJFhgGOd+trdDJ32bZEM6BcF86Q+pX
   n20+sa2i12IK0bDY/l2TYT3sVuUYggZx2iGbDkOjFRs1KHUUIeAgUr6va
   m8X7PsIPT+LhCe+zhbRO1OncCwNbepLBoOBbEE3fY3Wq3kd0IPzDLNiSi
   w=;
X-CSE-ConnectionGUID: YY3cevO2QuO/ohP+Vw0/UA==
X-CSE-MsgGUID: MRG0ERbWRFKYcGO3PtRqpw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="8658347"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000";
   d="scan'208,217";a="8658347"
X-IPAS-Result: =?us-ascii?q?A2FXAQA/z6lpjjQMXShSBQOBCYFQgT0BgQNBAUOBbJZPl?=
 =?us-ascii?q?0OGVxSBEQNIDw8BAQEBAQEBAQEHAi4BIgQBAQMEggyCdAKNISc1CA4BAgQBA?=
 =?us-ascii?q?QEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHg?=
 =?us-ascii?q?SYBAQEBAQEBAQEBAQEdAjVVAQEBAQMBPwEBOA8CAQgRBAEBLycKHQgCBBMIg?=
 =?us-ascii?q?nqCHgcECwcDNqpQeIE0gQGCDAEBBgQE2ycYY4FnCRWBOIN9gT8zgmQBASqBN?=
 =?us-ascii?q?YJbgSEZhHo2gVVEgVeCMDg+hBwOGx8mg06CL4ImehQddTOGE4QwXYZBUnIiA?=
 =?us-ascii?q?yYzLAFVExcLBwVeRUMDgQYjSwUtHYEjIR0XFB9YGwcFEiEqgXR4ggEPhmt5A?=
 =?us-ascii?q?y54DiICOlxKPgtaBYIYAwttPTcUGwMEgTUFjRVcPoMvEzGCRaJujl+UYzQHh?=
 =?us-ascii?q?B+BXgYMl2yIMheEBKZnmQaCWKY+AgQCBAUCEAiBagOCETMaMEOCZ1IZD44tD?=
 =?us-ascii?q?QmDXsgVeDwCBwsBAQMJkwlgAQE?=
IronPort-PHdr: A9a23:wCmvORBcJQE037g+UiqHUyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:1Gk7WakP6HgaIDt2co+TybTo5gyJJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIWCmCCOf/eNmKmKo8iOY3j/UtVvpaBz9diGgI6+S0wEC4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8ykkjclkYZKlUbGeYkidfSc9FWF5z0slw7Vh6mJRqYDRKxuXv
 t/vqNHoNlag2jplWkoZ8KvrRClH5JwegxtG+AZlDRx3lAWGzSdNV8pCffrZw0bQG+G4IMbrH
 44v85nkpgs1zz91Yvu5n7DydFE9Q7K6FWBiXVILM0QKqkEqSh0ais7XBtJFAatko2zhc+RK9
 Tl4ncfYpTEBY/SWwLxFO/VvO3oW0aVuoNcrKJUk2CCZ5xWun3DEm52CAKyqVGGxFyke7Wxmr
 JQlxD4xgh+rttPty7+lbbNVm+NkK8nTf70A4jZd5GSMZRomacirr6Tiz/kI5A1o1+tzRa6HI
 c0EdTBocRLMJQVVPUsaA44/m+HugWTjdzpfqxSeoq9fD2r7kFQ3geOraYCTJ4biqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXoqKM62wHMroAVIDgsegOWm/OGsGCdatlwD
 Bcs5hA3tbdnoSRHSfGmBEfk/xZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesCDV0rKCOE3uP8q/N8mvrY3BIdykFeDMOShYD75/7uoYvgxnTT9FlVqmoktnyHjK2y
 DePxMQju1kNpf86jK6243edui+L4Z/Jdk0L+V2QY0vwu2uVe7WZi5qUBU83BMuswa6cR1iF+
 XUNgNSD97oHH5WVzXPVGb9VQevv4OuZOjrBh1IpB4Mm6zmm53+ke8ZX/S16I0BqdM0DfFcFg
 XM/WysOuve/31PzN8ebhr5d7exxksAM8vy+CJjpgiJmOMQZSeN+1HgGibSsM5/RfLgEyvplZ
 cjznTeECHcRE6N8yzSqD+way6dD+x3SMVj7HMihpzz+iOL2TCfMFd8tbgHSBshnt/nsiFuOr
 L5i2z6il083vBvWPnOPqdZ7wJFjBSRTOK0aXOQML7TTeVc4Qz9/YxITqJt4E7FYc21uvr+g1
 hmAtoVwkTITWVWvxd22V01e
IronPort-HdrOrdr: A9a23:wmP4XaHqiT64XUbTpLqFdpHXdLJyesId70hD6qkvc3Fom52j/f
 xGws5x6fatskdoZJhSo6H6BEDgewKVyXcR2+Us1NiZLW3bUQeTTb2KqLGSugEIeBeOvdK1t5
 0QFJSWYeeYZTcVsS+52njfLz9K+qjlzEncv5a6854bd3AJV0gP1WdEIzfeNnczaBhNBJI/Gp
 bZzNFAvSCcdXMeadn+LmUZXsDYzue72a7OUFojPVoK+QOOhTSn5PrRCB6DxCoTVDtJ3PML7X
 XFqQrk/a+u2svLhiM0llWjoKi+quGRi+erN/b8yvT9Hw+cxDpAKr4RGIFq9wpF2t1HoGxa7e
 Uk5S1QdfibokmhAV1crXbWqnXd+Sdr5Hn4xVCCh3z/5cT/WTIhEsJEwZlUax3D9iMbzaZBOY
 9wrhekXqBsfGf9tTW448KNWwBhl0Kyr3ZnmekPj2ZHWY9bbLNKt4QQ8E5cDZ9FRUvBmckaOf
 grCNuZ6OddcFucYXyctm5zwMa0VnB2GhudWEANtsGczjATlnFkyEkTwtAZgx47heQAYogB4/
 6BPrVjlblIQMNTZaVhBP0ZSc/yEWDJSQKkChPhHb0mLtB1B5vgke+G3Fxu3pDVRHUh9upCpK
 j8
X-Talos-CUID: 9a23:SomTvW2RY2GDjGcBSt0JAbxfK/F+eXDD6y3pPmj/DmZRC4OKERit0fYx
X-Talos-MUID: 9a23:i2RCfAvorem6whP4Pc2noQtNbOpS6ZuUJmM8mroh4PGYDzVoJGLI
Received: from mail-eastus2azlp17012052.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.52])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Mar 2026 10:48:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fRYr/t8lvIcwk8nEgTUtZp8tMhqpU8D/uBF4Ol5kBtPSo1m0QGchufAdUpo9vo1QzyspAkT48CnILQPm9O68BUXXCE0ODPs/qL5T+/HElBVFouzTalz62ylw/lA0AHp/KMsUIwzoQJSSa0hxtMxEO/u0kyzlroB3yjL667jXPjclAtPjzLnfsEuHOHzh04xnLKTU1m+ShyFlnuYYSPn1hQZd1Pncrkl6cpHxsUxmTpnXS/CeDGjkRAroDurxcYULQdFeq/glebTZNDAWN78QC2rVMdrGGZDGZGlo2JwJpzUCMdfm/4UTz1hjhL5l9mNS2GZd9D1vHPOd5/9ucKEsXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ha9t05j1mljn1GqyUGm7lyXcnmDx/XMfFiPwd4ko4p0=;
 b=fqYnnbUHvhEG+qrtY858ThwnF8hCFWx6jLJh8H9fsLPjjjoNhnbKSSmjsQ5z8BmL787GWUJR6KZ2Nz2a4ICBx5qAvc53osdbBHgbxP4Kjj3JCKO0RsKTsBAOR8eo1UWEDmD7CSMRnmKhrGNUN6oRQ7NOCz7GH7vLR9ZZLaGop7uIkiJlUQY36DMukAodWCU3nzvIXLAqvvRPsx1nCgXA/69XucXhco11A0ZnuD//qdtkSKsiSoGWLCtx8qJoNebY/xj8IR1no7Nf9Oc3XptrUj6D6F6E57uqVO0Oh73RhkqUuSnnBLoI5X/wc4IpV5k3mDTJ5ddvyf511ZyfWl9hZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha9t05j1mljn1GqyUGm7lyXcnmDx/XMfFiPwd4ko4p0=;
 b=UOGAwglM/RYkEL+C/SiGtOZiVS9oI6yurFA6jShJl421lDniU+crRcKP+9BH2vh/shZ33FBSB7rme9kc/sGfqJUsAIBDZfGmMPwM0+xBmQ/lBn4tX7GyZuJGoHjTKlws4E53qNbbnyNBdSrdBrAhFQIynCU1YT4Pey8FDLzj0NY=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB6399.namprd09.prod.outlook.com (2603:10b6:a03:268::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Thu, 5 Mar
 2026 18:48:14 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9678.017; Thu, 5 Mar 2026
 18:48:14 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: IP locked for X440 RFNoC build 
Thread-Index: AQHcrMLQBGp+5ilY60icOpb46GQ1OrWgR3oZ
Date: Thu, 5 Mar 2026 18:48:14 +0000
Message-ID: 
 <SJ0PR09MB912636EC994B2FF3946E78F1EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912699CCC9BC55341AD91928EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB912699CCC9BC55341AD91928EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB6399:EE_
x-ms-office365-filtering-correlation-id: 0dd5c55e-9764-43b4-b481-08de7ae7c1df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|8096899003|38070700021|7053199007;
x-microsoft-antispam-message-info: 
 ZzS9gCM327leKO6Rsa0f6JZRQDlgANeRrLdICs0sRAu/vQk6QcL0joVxvwJULkY6cg6yJiULV4dVHtkbKgiAiNtEDMfd59T7rhOGa/BhXa9DErC/S2Ltc1/7ZLotyDxhPV03uF2chpB4wXjnycTvPZ77fstAMvFJdoy7bpUpKsuhsOfNp6S88eqbS8NrPNod/jkRWBKc+aWlli2/i4XV/fsLbL597VcnZlUCnEHy9Te7Dx2p2A9tkT64sPE3hnm5HliXoIbrbglSYJLy/nJ4gl+d6V6aGRUnoJVcRrPuUFw/zERgkWtte+SwGyZ+Tl/NmWcAHnveyOihFRrznIlEveKAoLcHMnV57aRSGPsFM0bFTPCwR9t/cSRjcxekW1BvLkNaxhbGf2dffXM+NYbkgk2JvPqwKTCjQv/XxolKK5wqbaL5e6qQ0KnZjPi9sAvy/JaQBgkxazADb66Bld/l/07iD5xIoMQSj3zxlxyreNsuCopjqtxPWU165UJZkb5jHfLl+UtzciZpz7LnXqEJcooXoKxBDfTEMRBf4VCeNycoXJP8E6qQAnyIriyHGL8nwH6QTZmpBj4fE+lWglmK7TaVxtRK8pMP3Vi4CZBvuYfesmNjmbCBgh9HcwLwKuBRR7NH9YTLc3T4mTfdb0SswPo+IByMTSKfssvn6nJEPsEQnALDMSWPFzlFfo+4Fw7qnUeIm1A5zVKWnIyPYaGOKwFZmhEyFL1+XaMVnebYdK0lZzEEov8EGLKSYu5MhQcP0LXbaYYc6/UFcnGAjbXJ/mwDwTUQM1FmALHd6JgQZpE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(8096899003)(38070700021)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?XARHurTdO/vRIelP3RJ+VnOihZt8YKx9FoK2R7T39xqiMrUwzAjMW1Yw?=
 =?Windows-1252?Q?y/3c03eyVL84DKC+vlUwhmLl/6FWzJdL190UWo31UKo+s+dKdByjIxtz?=
 =?Windows-1252?Q?JaHpFlGf275SH7o6yWb1ncAqVvLrv1Q9ClH+dwdNFsP7AhCespW5Y8iT?=
 =?Windows-1252?Q?PWvuKYYKCX7JAlZ86esbArZrDe/bAilJQHTajSTWXJIYKiywEnJCozQJ?=
 =?Windows-1252?Q?aALaQRDvJhb73nugwypWXDG2D8D0IS1sdHUpjR7y64jeRbL3YAsZrVvo?=
 =?Windows-1252?Q?xsnPhmYo3MGhi1wcW2/Eqmpbo970gHHP/RMkWvOVMI+t2Mua5seVTBTp?=
 =?Windows-1252?Q?yDGQtLUQU97AVuWFBRvSYTRTCNwJRHYp9V5bEv9w22/Qi3azWGe/diO4?=
 =?Windows-1252?Q?RhME3Y7c6NFv0zsrskta6ACmXHHlSSUKUXxAdDpxobZSbTrv2UyjTvCV?=
 =?Windows-1252?Q?dgCEpn67SmKtm2L6amFKiblJOWLzIMRb8cL9pzRKPtZdL20lahw1Eu6F?=
 =?Windows-1252?Q?YmbdrT7vRuxtfGPycSoRTMrqPhRMIgi/g6FtPhsbmekFj6g0sR/HCc2t?=
 =?Windows-1252?Q?hCE1nrGfho4xV9OSrXncci76GSVVoz7O8P/9P8jHbsGyEbjPd5WYioPm?=
 =?Windows-1252?Q?OcxDUCtYuWWBYTekfKx1DV8M9wBCqR8t02Xf+t/P3vZ5hGUa5J8xoiT2?=
 =?Windows-1252?Q?w3zCCDawVYauH/fjN1GEHWMUUoGfZYxU1J3ljPcKn1lrk5kJdnwRxH9n?=
 =?Windows-1252?Q?iaDuwavVNBazRQtcNsx+PC68+kXhIxFIbZ5n6i15/aMWNgn4Sh0T7jWt?=
 =?Windows-1252?Q?vr2Q8QA4sFgPqSmdn6LfTBjDc/+Qmteni9MnZvCdfk+XHGpuNGG/At14?=
 =?Windows-1252?Q?iGUPYCSP08PFEEy39yz9J36PJp36iIFMg3dmDCzpFWO6zrEqjG9FCAjV?=
 =?Windows-1252?Q?YP2h+LYW0RlJk9hY6oS0IdBjHdfvZqnVvXIlKV6O5vyBIGwnXX0No8DR?=
 =?Windows-1252?Q?DDE1uNOiOQ2GzlP11vjbrc6T9aVo+izuM3uigJfRF4hUhOYOJGC7CT7O?=
 =?Windows-1252?Q?jSmrwElmqKL95xw2ljBV5zE8r5hScDc3qvSVVZlZOP8CrvvqhUxf5I7n?=
 =?Windows-1252?Q?IcCQNqP9E+ERPvOF6WOgQlGE/Zdjg6u2IKxGYtlscZ+grMG1mwpB2//3?=
 =?Windows-1252?Q?oVo4LJes9ZDW+f5LNWwXTBrIjnmqV5fDgMmtpujduzuNSprNqoTbeLXz?=
 =?Windows-1252?Q?v7aCeO1j62go3gd8OOMvTvBW/NAJp9gV6IlCvxI3GwwVmuxpYIli8Cd7?=
 =?Windows-1252?Q?V/XYM4nWSjLrMTa2jNJcsJQIQMkqhlpzWPIkzzZhzKd1b1krRy1tnq4l?=
 =?Windows-1252?Q?ScchhIKQ0ikZr7zUJMV8J+0R82dJTmV0aQGtWQzyqGg/SJ7qk7dyg2LM?=
 =?Windows-1252?Q?OQ0JFwFq+3ny39E2eXygmbP5f9Kic88z+jVDTPcMVLjAcYBvOSk+RRcq?=
 =?Windows-1252?Q?RpTWwDPg3MfiAHsdp32tXoRsbFrZhGYbtv3+WcA8VJ2yAX7sy5BErJdj?=
 =?Windows-1252?Q?qrCB6n5HN7+10z9AITZTiFysKJgliE62pRmg3eWVNM0g8xTktrlr1a3G?=
 =?Windows-1252?Q?OD971gNoxXfCFJQsw//K/aT4SOtW8wvZTPAzEMC5xFKZTQ7qN5+ZqaPb?=
 =?Windows-1252?Q?CS3laoIfOuZU7K4G3m4Wdnl/DwNm6tRXr7f3pWqVYgq6uXoWcN9WN1ZG?=
 =?Windows-1252?Q?hhg68+m1JxrSr2f+a/s7z24q3WIaKNU0tDySd3Zd8Ud8wnyEpSLT62Qk?=
 =?Windows-1252?Q?AwByZ6hTfAAe22UutYVzdiRJ16WjM6x5+w1pGV1cI+f/IyyA?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd5c55e-9764-43b4-b481-08de7ae7c1df
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 18:48:14.1499
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB6399
Message-ID-Hash: G5SJXN6G2TYXNCZPS6CIXJNVGNALQG5J
X-Message-ID-Hash: G5SJXN6G2TYXNCZPS6CIXJNVGNALQG5J
X-MailFrom: prvs=5175abe20=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IP locked for X440 RFNoC build 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HCEON56B3IAWHHLGHCJ5ZVMLRKBJJO6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9157545874693918738=="
X-Rspamd-Queue-Id: A81262171F4
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Action: no action

--===============9157545874693918738==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912636EC994B2FF3946E78F1EC7DASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912636EC994B2FF3946E78F1EC7DASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sorry for spamming this list =97 it was my mistake =97 the Vivado patch was=
 applied incorrectly such that it reported the new version but did not actu=
ally update the software.
________________________________
From: Eugene Grayver
Sent: Thursday, March 5, 2026 9:45 AM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: IP locked for X440 RFNoC build

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

--_000_SJ0PR09MB912636EC994B2FF3946E78F1EC7DASJ0PR09MB9126namp_
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
Sorry for spamming this list =97 it was my mistake =97 the Vivado patch was=
 applied incorrectly such that it reported the new version but did not actu=
ally update the software.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver<br>
<b>Sent:</b> Thursday, March 5, 2026 9:45 AM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> IP locked for X440 RFNoC build </font>
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
I am trying to rebuild X440 image X4_200.&nbsp; No changes to the yaml (yet=
).&nbsp; Getting an error:</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
&nbsp;[filemgmt 20-1366] Unable to reset target(s) for the following file i=
s locked: /home/eg26648/uhd-git/fpga/usrp3/top/x400/build-ip/xczu28drffvg15=
17-2e/hb47_1to2/hb47_1to2.xci</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:1}" style=3D"margin-top:0px; margin-bottom:0px; lis=
t-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">The Vivado version is=
 correct.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Tried it for both tag=
 4.9.0 and the master branch =97 same error</div>
</li></ul>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Suggestions?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" id=3D"x_Signature">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Principal Engineer</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912636EC994B2FF3946E78F1EC7DASJ0PR09MB9126namp_--

--===============9157545874693918738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9157545874693918738==--
