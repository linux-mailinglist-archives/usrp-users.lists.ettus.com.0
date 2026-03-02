Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOh4GIjTpWmvHAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 02 Mar 2026 19:14:32 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3961DE4CB
	for <lists+usrp-users@lfdr.de>; Mon, 02 Mar 2026 19:14:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A521C3860AF
	for <lists+usrp-users@lfdr.de>; Mon,  2 Mar 2026 13:14:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772475269; bh=Xqjpu0QmmpZbDjX4M1VQHFKITXxwtesFBop97kGNIXo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PWDMWmQnQAY2cdzzR1RcBsRvFcfy1433HWl9jnx4oh5wKagYJ60vgJcXAzC8nL6+H
	 Xf2Ca6/6bF4Vm050qLb/AE6FY9BJ1k7pjt2NmW+Puu0RiWzM5xeZltFIqJ0DWoLRSV
	 9Sv71V8D+xhG+iJt64d6rHuOu0KKE1LtuPovHhDdMN5Dm0RzoGcuctzT2OAaABYlWX
	 /QKxpuX4SFDrGkSv8NF405LufXYSvlHwKWwKAOZr6sEjwYr3j3ZngaFFWj1LDBgcJQ
	 L68frJzJqcq7FYXeBNWVyblZ2D4IpsFD5imfHt9bI2dQnPsQMxMgqgCfAtzN8HKrk0
	 AQBXSHlG6IQaQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F54F385850
	for <usrp-users@lists.ettus.com>; Mon,  2 Mar 2026 13:14:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="LaLNz5W5";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="nmsdOxpn";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772475254; x=1804011254;
  h=from:to:subject:date:message-id:mime-version;
  bh=tZfLupLtdDzImVU6JafydMjsaXCNv4M409oWGRQ3XC8=;
  b=LaLNz5W5IJu0yomQusGL0lR9AOo1Ld0TD3MM+SmKO5H10VKni/nAhm9N
   TuxxxzEhlB1i5uMfiacIK76KN7JPK5Y1TurRtbByglBT/U94CZy14M11V
   G0T9RqDGF15QgE4FfCpppTZXgxm0eVE1nmvFLbYKynTjAuzZjikFLpc6G
   8=;
X-CSE-ConnectionGUID: V7ZvkyVJSoqqgSai7IpWIQ==
X-CSE-MsgGUID: 98jIWS99QlavjRscUFK/fg==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="8623910"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800";
   d="scan'208,217";a="8623910"
X-IPAS-Result: =?us-ascii?q?A2GFAQDo0aVpjhsUXShXA4EJgVCBPYEEQQFDgWyuEod8A?=
 =?us-ascii?q?1cPAQEBAQEBAQEBBwJRBAEBAwSFAAKNISc3Bg4BAgQBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?QEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEdAjWBHAEBOBEBDHMnBBuCeoIeBwQLBwM2p1yBCIE0gQGCDAEBBgQE2ycYY?=
 =?us-ascii?q?4FnCYFNg32BcoJlASqBNQGEFIUwgVVEgVeHax8mg06CL4ImehQdgSiGLYQwh?=
 =?us-ascii?q?m2BRCIDJjMsAVUTFwsHBV6BCAOBBm4yHYEjPhczWBsHBYV6D4pXgROCFgMLb?=
 =?us-ascii?q?T03FBsDBIE1BY0GB1U/hA6lGIF8jGOUYzQHhB8FgVkGDKAeF6prmQapFgIEA?=
 =?us-ascii?q?gQFAhAIgX5SgS4zGjCDKlIZD446g2fCeXg8AgcLAQEDCZNpAQE?=
IronPort-PHdr: A9a23:ZIpHqhf5008XC8HX9wzm5k0olGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:/wkiRq7pWg5GfRG4ZbdNGgxRtCbHchMFZxGqfqrLsTDasY5as4F+v
 mAYWGCFM/aDYGrzKtEkbo60/EpSv5DQnNBkSFY//C81Eysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC//SEkvU2vbuOlV7ebUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5AVWicxj5geEySFOVMhHfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTi92NCow6OFaNJrn90sF8DqY6IHhVBZmGSx4fYOGfgvQo3hxYZg5m9hrf0WRa+YY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/63aJyPJbRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPO3mrKU72QX7Kmo7WU0UdGSA8KiAjkegWehEI
 HE62W0gov1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5bvAiZzsLaYT26H/7OJtjqgPTBMcjdbPHdeEk0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1W6YsSyvt6brdQks/wrsV2P6zxtGRbfwMuRE9mPnAeB8wJF1p2RtU
 VABksmaqeYJF42NnyGLXP8EGKyy7uSBKGSD2Qc2R8N+sTOw53SkYIZcpilkI1tkOdoFfjmvZ
 1LPvQRW59lYO37CgU5Lj2CZVJpCIUvITI6NuhXogjxmOcQZmOivp38GWKJo9zqx+HXAaIlmU
 XthTSpTMZrqIf88lmbpLwvs+boqzTo53mTdWdjwyA6/uYejiIquYe5dajOmN7lhhIvd+Vm92
 4gFa6OilU4FOMWgOXa/zGLmBQxQRZTNLcys85QPHgNCSyI6cFwc5wj5mu9+Idc4zv4PzY8lP
 BiVAydl9bY2vlWfQS3iV5ypQOqHsUpXxZ7jARERAA==
IronPort-HdrOrdr: A9a23:7Dqw6K7X7tvZkK5oCQPXwU+BI+orL9Y04lQ7vn2ZFiY5TiXIra
 qTdaogviMc0AxhPk3I6urwQZVoIEmsg6KdhLN8AV7MZniDhILFFuBfBOjZsnTd8k/Fh4lgPM
 5bGsAQZuEYZmIK7voSlTPIdurIt+P3kpxA692/815dCS16YaBp6Al0Tj2cDlB3Qwd+A584Ho
 q358ZMpTasEE5nJviTNz0gZazuttfLnJXpbVotHBg88jSDijuu9frTDwWY9g12aUIE/Z4StU
 z+1yDp7KSqtP+2jjXG0XXI0phQkNz9jvNeGc23jNQPIDmEsHfkWG0hYczPgNkGmpDg1L8Yqq
 iMn/4UBbU915qeRBD0nfKn4XiZ7N9n0Q6Y9bbfuwqpnSWxfkNGNyJM6LgpCCfx+g4uuspx37
 lM2H/cv51LDQnYlCC4/NTQUQp2/3DE1EbKvNRj/EC3a7FuGoN5vMga5gdYAZ0AFCX15MQuF/
 RvFtjV4LJTfUmBZ37Us2FzyJj0N05DaSuuUwwHoIiYwjJWlHd2ww8Rw9EehG4J8NY4R4Nf7+
 rJP6x0nPVFT9MQb6h6GOAdKPHHflDlUFbJKiafMF7nHKYINzbErIP2+qw84KWwdJkB3PIJ6e
 T8uZNjxB8Pkm7VeLOzNcdwg2zwqU2GLEvQ9v0=
X-Talos-CUID: 9a23:ltauhGBkXz3vNff6Exc4xlAXC/4HSXrE1XjrKk7nKH5WaYTAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3Af5dkgwzBN3KL+cU0NSWSxH2KyOeaqPX+CmEyqsR?=
 =?us-ascii?q?Xgs2NKy5KIDygohfwTIByfw=3D=3D?=
Received: from mail-northcentralusazlp17011027.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.27])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 10:14:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rvd9mhSQSh6pg5hI0fyqSzNK5GlkVtqO2KzODA0AXWDPdzKgXvhv2EbNzAUTrXYPkYuE0RTyYaQRVif1/d4CQgEJvmf4HArSRIfRyvwaXFINSjydL8gKrjplFiOckw3rJM3EgYQ0sEsxgR6Modd0VRmb6jIPH78silG21GXu2cP8p4F8iM7sZevF4QmoiGMHPWYcAJewQVsxXhGM25hF6ImNVgySMgx+XIjcsgo8kLuhfQq39hfAmwQfDf6n4dl6JWfXTxaeFCKbs0anQw2NW5gUoy2Fg3gdhg4Zt4xUMZFu07rpPdLZomzCKJPjp8MW6JbVFyA6of/26XQS7eSvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3DrGb801FiScGnBNr/GrrA3WKdevQ4RbQCLEt5FCq8w=;
 b=FTSkHOBXEwyfoZlOvNJPGt9BP7Mwu2+cN10OjadjKpvATeE2hbgwbqNoYjBpL2x4hOudCel8E2YhH34uiv0nmGvBtTWC7bGjFYavfZ7VeSMG6BhddIMlvlMoGD7Ni7aLhzuBIT37PiyMeMqap20pIvS3oSf7uHlgDQyNSz13klpUxmsH08rvWCriu0qbZGRNyOTF0aW6LEONRF8Rw8iTZeZ59lUPAkXTswTX9xUivHxIcPLcmbHVc0qvlzwr6lee6lgrti6bdZ6i41raL55OlM3K7T8GOZ7rqNcfzMEAU+1CcIQI3s9lZ8y+Yx0u9SJCYNIF1BeMa8dcBLvrjos8GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3DrGb801FiScGnBNr/GrrA3WKdevQ4RbQCLEt5FCq8w=;
 b=nmsdOxpnNypfztH35aXoBoQVDx4OVFaVWvzqXXHJYrBhoLO+LorQY7LpQTv3dLEu6D5XNbI4/vJ+hkb3DZmbvS/50pQY5wemODLJ8l54t64P/WNyI56ZasoFPpnVkUDOzEg8xNLV2jLKYKOJvyMR/1nhoW6laDAzs/kZjP1ZnMQ=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MN2PR09MB4633.namprd09.prod.outlook.com (2603:10b6:208:21a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 18:14:09 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 18:14:09 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Bad channel on X440?
Thread-Index: AQHcqnAgqjyQJx2KxEKOK3+76LL6kQ==
Date: Mon, 2 Mar 2026 18:14:09 +0000
Message-ID: 
 <SJ0PR09MB912602F90CBC445F31E0CF45EC7EA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MN2PR09MB4633:EE_
x-ms-office365-filtering-correlation-id: f8b0aa3c-c79d-4054-f1bc-08de78877fdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 mjujZsKWM8IGw+UtUcDv1eBWV0jLzqCfEEFx+uK1CqywJXWYBfiiVUsg3DF+OZxhHVm+xwr7Z5g6Qs5XkoWBsbgVQ8qWDmMkX1KQnDqhzQqniKIFMe9g9YsjRsBBZqLg+TgZ2IMvDAEHgSkRRK1nz8HilN6An1fffYo2PPkm/svGwFVDoywJUpH1k4ap7erhQZMW4WBW/VX5cZYRdWDcJnzKlEYZ7gLNL1CXJcl4Ef4SycphTiZeAO7ndSINLBCnCkvzKermLs7qBgP8MVFJ4oPY67pqfJkdImuux7G3YJ+YSqYbZKvGbidsJN0+cccBNI74+ylBkQKO6QywiTshwQHbwpPdfJWassg8PrgwPvRex06RdBWQAmU36Jo/5xJWJmAOIWP01ebSgFubK0xb4XqWoxQ5JBspU1SPwf4xs1QZNpie4HYFdzYN3NotcUpfBJm5DyG8/W+D0Gq1Pv3XYr0WXIY0txJBtlu6j2EhAY5wNPf6wtQ6s4d0QSa+/Ir6uiUGNofjynXRMlZOmjONG/M4KBIIJvbsO9AfZBzQOwBZ8nJShUpRWDJNolSMocU+MIqadQAYhA4C1wimr+l9cqthRehGqRIHZf53zd6foGj12dLPZa/ExRJRpf6Pkh1GUEPh8UFIDLLinbUhpBPVTpL7KmFtxrAc1MbxC6Q/02Q1lN8xCGKddOCedP4cXD6aFTV87YDYs89j2rxUsQF1GIS3lD0+pBwz3zXSKPXTKlIWB1J0edZJKoZnTKq4U1CzqrDPFXW7SV/sMCVJSXh0K5LNBYfTeHW7D0NDYf4H/3g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?adVBeQLzuflJd0+soY/KNNYzaMpHuZwxSbuMNzA9IrrplRqyrrTYX6ngF2?=
 =?iso-8859-1?Q?+a9DMiUceKNH2zY37IHHrI1BoKqMQT1jvH4//UF1wn24fH+MZhfEloYfW5?=
 =?iso-8859-1?Q?9v9PsLVMcUe4D1Yx6QjMtwO44oHNwFs4W8wdzdhXTJmGQEmOuRDcsbakqM?=
 =?iso-8859-1?Q?xLEJr7vNHjG37MpvIHOkx8m8IFZowVLtuRb8k/j73KyoMi3cyt7aaR2Om1?=
 =?iso-8859-1?Q?nBfGNMD0FLhZe+k8KIYU46k8Ao/Z7lKas3blMK9rJAci9YJ8f4Au/rpOnn?=
 =?iso-8859-1?Q?UGR5Mx+GeIDSSipJdmCwfFL9uCyEYjUScqTHEVr5t9npbEuFRUWAXT2P7b?=
 =?iso-8859-1?Q?JBRCu5nu8VfuPsg8kbgvRXwmjoxR5SSSoqupfNZ3EUN8VcWBTTvZ9gQIeX?=
 =?iso-8859-1?Q?UkN7IuKYMNl7pHlUctoqvz6+UIFroRrRPMAmgmwHdGdcQBSRkcJrZJ88Op?=
 =?iso-8859-1?Q?q2NzNJM6IQ3+yXOrqf0TQYOZwTNhTC9JmzRTWaJrp3Gj6BTvPozSCUK/sr?=
 =?iso-8859-1?Q?TS5Y00B+zfClwL5QAcZjH1/MCMUC1QQWLB65N0jx11C8bYhyWNpaX10DE6?=
 =?iso-8859-1?Q?r1Euj3vcnpQ3/WkpbhQU4QVzUzHsvhzfplSaHxYAJmt9O+TIyIblhsCjtg?=
 =?iso-8859-1?Q?I3d1bBqGQ4iF9oNAk3r/eQ4TUeJjkZSuMFp3UFeDxldlg0g+pv3hcOmySE?=
 =?iso-8859-1?Q?RDkWvHnoUnwRyJ0bUihcVqZTr7D3uX65mOJ/1GxLOV819pYSX5k6kH1lEj?=
 =?iso-8859-1?Q?Y6DnvAsqUSmpK1r0MNBi7x6qC7M1I7hL0CAzkof2h5sq/wLQF6NipRb0kx?=
 =?iso-8859-1?Q?JVdiU4vbTtbtMg9yY+q8TVBmVNz+KOBN306Wdhp2E+iSVbDITjbFS1JPDr?=
 =?iso-8859-1?Q?0guPry3Ar5n7Y1LVERCH9wL6MiM6tRCCSCcM8nceqEB16FhkPNwWNhJqeH?=
 =?iso-8859-1?Q?925VphpfAtrOYOLbuH6zgPFyBpv7jSZs2ahYq9V8jwH6z00IaXAUYkfqYU?=
 =?iso-8859-1?Q?V5NGymDlU3z2ZT1INF6QnQOAzJoT/WhUdIifLYRBkqvtY650VQvwkLfykH?=
 =?iso-8859-1?Q?ZnLmPv0CQ28WoiFoNFmTG9EDTFKnXw2r1I0JVSqa2kuT2F61ggZgfL+uvI?=
 =?iso-8859-1?Q?r/vTwc4B4SHvXK+XNnM1ST1Efl0hUjyXOtB1e5iXdnD2nf3fzdLPykkajx?=
 =?iso-8859-1?Q?9JuoHQlnI46Z+kN7XSbhH79ysToYsvzHIWGeNMHANWcJT68Wgtl+6a8g4u?=
 =?iso-8859-1?Q?w5T9m3+JcHKL01aDbNDFK20OsXBMNS3/HEbZ+2EbWOSmSs3Np6nb8Q5ENT?=
 =?iso-8859-1?Q?ngaSlvFjD9Dj8KT3c6kR9bTPMXdrRdO4y0tJay3SuFALkWRfDO1U05higy?=
 =?iso-8859-1?Q?TBJu3JTM9pqpV5KLz33h4QudDodRPedx6P8VLIwxwZE/UXkag4UmyCrjuq?=
 =?iso-8859-1?Q?gMUnI4J5OkuQ4EI24XjWdXRYSFN6I/8TfTMW/ObTy+JT1WiomGU2/6gf8e?=
 =?iso-8859-1?Q?Q2IKTYveyn/Uyhg4eRgAxq3Pz5N6T0nlFYoM0lpZRfx60QGpP4AalhhzEq?=
 =?iso-8859-1?Q?0cnz4QZLj4TE5pOnogJy5d/Z+gPORoAO33FEEfjhp/9MdKMmE9c+bIG2SR?=
 =?iso-8859-1?Q?VJsRucktAZ7zRPXN4eknczjxGmM8EVcfiP+cNCfjXiQHG4B0D+LYLVIkxv?=
 =?iso-8859-1?Q?WJem6tlRMrJLmudy/MU/v+UZGv01b1yz2ncLIU6rxME7nPcv44AWgsuznX?=
 =?iso-8859-1?Q?283DGk424up6Q5F4t4IQ2taddanERhFjttVO5RjhMog9a3?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	cmqzCbU6HhNGMoWmKW396/5dM4liZQmJXJtHPtW8tw95VDJL4oadt3poNb4HT2ab64HU/99sN0wW32OLsDVco5ljEGBlcR+VlAGhMbkbETVAAOiVvj1SeQJqYpY62ychu7bnGBjrETofcYzJX0rSB7xM47XFlsqD4Xgi+SwXYbON78kAvb1OsUSGTtChfaRFe+1aNtgcFdYMW7lD5mgHOLvw2lSe226NAdIhVuUpK9HtXrdTLtTRNKr+EllipRsuNAfcQ2NCDKnDET7fYUO4c6T+aLIvYCaH2LNZHVKe8IjcFtRgSJWMA66f/3OJPxzMEcerx99CUVnVXhC4FnxX0g==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8b0aa3c-c79d-4054-f1bc-08de78877fdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 18:14:09.3748
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4633
Message-ID-Hash: IADEWFT7FXPIHQCBMIVFK55PO2RH4FOK
X-Message-ID-Hash: IADEWFT7FXPIHQCBMIVFK55PO2RH4FOK
X-MailFrom: prvs=514624201=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bad channel on X440?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZ5N55Y46QMPUWQG2RG6NM6RXOWKP7JM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7562007729712416652=="
X-Rspamd-Queue-Id: 5B3961DE4CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
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
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Action: no action

--===============7562007729712416652==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912602F90CBC445F31E0CF45EC7EASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912602F90CBC445F31E0CF45EC7EASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I finally setup a brand new X440.  One of the channels appears to be bad.  =
Using the same cable, from the same source, on Ch 2,3 I see a nice sine wav=
e with 1/8 scale amplitude.  However, on Ch1 I see a noisy sine wave with a=
bout 1/1000 scale amplitude.  Since the cable is the same I have to assume =
the issue is with the port itself.

Is there any way this can be a calibration/SW issue?  Using UHD 4.9, rx_sam=
ples_to_file.

Thanks.

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912602F90CBC445F31E0CF45EC7EASJ0PR09MB9126namp_
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
I finally setup a brand new X440.&nbsp; One of the channels appears to be b=
ad.&nbsp; Using the same cable, from the same source, on Ch 2,3 I see a nic=
e sine wave with 1/8 scale amplitude.&nbsp; However, on Ch1 I see a noisy s=
ine wave with about 1/1000 scale amplitude.&nbsp; Since
 the cable is the same I have to assume the issue is with the port itself.&=
nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Is there any way this can be a calibration/SW issue?&nbsp; Using UHD 4.9, r=
x_samples_to_file.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks.</div>
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

--_000_SJ0PR09MB912602F90CBC445F31E0CF45EC7EASJ0PR09MB9126namp_--

--===============7562007729712416652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7562007729712416652==--
