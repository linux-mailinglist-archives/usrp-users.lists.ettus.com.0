Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A/jHexw+mngOwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:36:28 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC554D466A
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 00:36:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BBED385BBF
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2026 18:01:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778018477; bh=PZrE7zgtNOIU95DcvAvbObOdijVIW6NMDgxoKE3edfg=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vbgDKOAKCQ9qe0pjhZAcQVL9aWxZFiaw4ZUOvGPMTN4p3JEsfH9ouO/guJXPtP2SL
	 /fi9Ko2NrjPqJY+J7udnQCOjxMxl1kWqpIl1WI73IXLMmZm8dul6to8WNBVj/BWGgy
	 Mou3aSLiQVFpR7QT161zEXmhXrJu3KObMkeE6bOyN5Lh5YZ6xte3UsTQ1h9OBtGgPU
	 gsJWhFxQB2PE9KcH/sukPWWZNgrR9rrGDPJmuohdpe0nOm07Y0CMWTII0yEX2b5bvH
	 ixGlis1deLVP1yhaTMgiWHr+TxmSgqrR8hDexcr3oJMeyaVKzMaXWhzWE+2v6oJphG
	 VSGS5QiiwMtvA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id C3C6C38B5A8
	for <usrp-users@lists.ettus.com>; Tue,  5 May 2026 18:00:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="rydrAzJ3";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="R6l3T6Su";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1778018403; x=1809554403;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=0D8+38xgCyjMDgKM5G6xVcvVeCNZ4f6ngZJvxZoORXE=;
  b=rydrAzJ3JykeksGWOLEsXAiCpTInpMME7Sy8hy+fMrAZTt36QoKDjY79
   Ku1UzrGFIP0j+glJuhYFqAdQkB4OQ3yH+G9g61UU9O7ewFxibHvHr5YEm
   bJLnsJqDduo3VSx7Z7RkBBENv50nwTXbMv/bEAfbXkAQtgTLieQN7kb+l
   E=;
X-CSE-ConnectionGUID: 5lj+Bl/DRbCbQDLuB3yoeg==
X-CSE-MsgGUID: P45edzuYRLejoU/BdZgIMw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="9135176"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000";
   d="scan'208,217";a="9135176"
X-IPAS-Result: =?us-ascii?q?A2EnAgADaPppjjcMXShahBYBgQNCAUOBbIRYkXQDi2SFZ?=
 =?us-ascii?q?oV5hmuBEQNNCg8BAQEBAQEBAQEHAi4BIgQBAQMEhH8CFo0dJzgTAQIEAwIDA?=
 =?us-ascii?q?QEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEdAjVVAQEBAQMBIh0BATcBDwIBCA4DBAEBKAMCAgIeBwoUCQgCB?=
 =?us-ascii?q?A4FCIJ6gh4HBAsHAza1ODd6gTKBAYIMAQEGBATbKQ0LZIFnCYFNg36BQTOCR?=
 =?us-ascii?q?x8BASqBNQMOgkyBIRmEejaBVUSBFUKCaD6CH4FlCgESASMGLoMlOoIvgiZ6F?=
 =?us-ascii?q?B2CW4EGgi2IbVJyIgMmMywBVRMXCwcFXkVDA4EGI0sFLR2BIyEdFxUfWBsHB?=
 =?us-ascii?q?RIhKm5rdCxcGgMCCyE1WUA4C0kFgXICgh4ZXyMvA052AwttPTcUGwMEgTUFi?=
 =?us-ascii?q?XUHVh0Pgi8+ZQgVG0YrgTmSc2GDOotgjl+UJj00B4QfgV4GDJdsggCGMheqa?=
 =?us-ascii?q?5kGkhKROD8ZhHQCBAIEBQIQCIF/URQqcDMaMIJEZlMZD446g2nILXk9AgcCB?=
 =?us-ascii?q?w0DC5NnAQE?=
IronPort-PHdr: A9a23:1g7xeRFYMWnP33pFbLZVVJ1GfiUY04WdBeZdwpYkircbdKOl8tyiO
 UHE/vxigRfPWpmT8PNLjefa8sWCEWwN6JqMqjYOJZpLURJWhcAfhQd1BsmDBAXyJ+LraCpvG
 sNEWRdl8ni3PFITFtz5Ygjbr2e1qzkIFUaXCA==
IronPort-Data: A9a23:dbaaDajzJm1HfsAkP1VJL/UYX161RxAKZh0ujC45NGQN5FlHY01je
 htvWW7XM/iPZGTxf4p/a4i3/E8A6MDTx95kHQJsrS9hEXsW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScsjfngqp3UUbebZX8ZqTdMEXpn0VQ63bZi2uaEuPDhayuVo
 9T+vsbDD1Gs3j9wIwo85rmKwP9VlKyaVAgw4BpkPpingHeEzyNLVM9HePnrR5fFatA88tCSF
 r6rII6RozuxEycFUruNjrv9e0sWdb/eVSDmZq1+BsBOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvCVwrxFC3G0JAklVUFO0OevzXFSKqV/xWWeG5fn660G4E3boeT0Uwu4aI1D3
 aVwFdwDUvyMr7+ywvGRTq5AvM4IJvDHGJ414WBnwD6MWJ7KQbibK0nLzfV+jA8K3pFlIK6GP
 owedCZlawnGb1tXIFALBZkineCuwH7ibzlfr1HTrq0yi4TR5FAplum2doOPPIHXLSlWth/wS
 mbu8nn2DxcXctOFwCub/2iEj+LVmmX8Qo16+LiQp6cx3QTMmAT/DjUuCQa2reuku3SaVtBYF
 gs+9hghjI0toRnDot7VBEbi/CHsUgQnc8dLCfV/9RqA0LH85weCGnNCQyJddcdgv8gzLRQgz
 laFltfoAztHv7icSHbb/bCRxQ5eIgAQJG4GICINVhcY+IPqsoUr102XF4w7TfPzicDpEzbtx
 TzMtDI5m7gYkc8M0eO84EzDhDWv4JPOS2bZ+zk7QEr46gE6ToriS7aiwlLiwdJdBt2ISVSO6
 S1sd9el0AwYMX2aeMWwrAglGbio47OIOSbAnEU1Fosl723yoyf5Jd0NpjZjOE1uL8AIPyfzZ
 1Pesh9Q45kVO2a2aahwYMS6DMFCIUnc+TbNCam8gjlmO8IZmOq7EMdGORf4M4fFyxlErE3HE
 c3HGftA9F5DYUid8NZJewvt+eRwnHxhrY8ibZX6xA6gyr2QeDaeTq0dWGazghQCxPrc+m39q
 o8HX+PTkkk3eLOkPkH/r9VJRXhUdidTOHwDg5ANHgJ1ClY8QDl5YxIQqJt9E7FYc1N9zL6Xr
 i3kABAAkzISRxTvcG23V5yqU5u3Nb4XkJ7xFXVE0YqAs5T7XbuS0Q==
IronPort-HdrOrdr: A9a23:bnm68K9QiBIMVkFesZhuk+Fydb1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKQodcdDpAtjifZquz+8O3WBxB8boYOCCggeVxe5ZnOzfKlHbehEWs9QtrZ
 uIEJIOQuEYb2IK6/oSiTPQe7lP/DDEytHQuQ609QYOcegeUdAF0+4PMHf/LqQZfml7LKt8OI
 uX58JBqTblQnIKc8S9CEACWujIt/fLmJjlbRNuPW9r1CC+yReTrJLqGRmR2RkTFxlVx605zG
 TDmwvloo2+rvCS0HbnpiDuxqUTvOGk5spIBcSKhMRQAC7rkByUaINoXKDHlCwpoduo9E0hnL
 D30lkd1oVImjLsl1OO0FjQMjrboXQTAkrZuB+laDXY0InErXkBerd8bMpiA2fkAgwbzZ1BOe
 twrhykX5Y7N2K+oA3to9fPTB1kjUyyvD4rlvMSlWVWVc8EZKZWtpF3xjIiLH4sJlOP1GkcKp
 gYMOjMoPJNNV+KZXHQuWdihNSqQ3QoBx+DBkwPoNac3TRalG1wixJw/r1Wol4QsJYmD5VU7e
 XNNapl0LlIU88NdKp4QOMMW9G+BGDBSQ/FdGiSPVPkHqcaPG+lke+/3JwloOWxPJAYxpo7n5
 rMFFteqG4pYkrrTdaD2ZVamyq9NVlVnQ6duP22y6IJyYEUHoCbQBFrYGpe4/ednw==
X-Talos-CUID: 9a23:sn0GIWOZ1iv5o+5DBS1lt2QQXewfeFbX9Vv0PmXjGGFkR+jA
X-Talos-MUID: =?us-ascii?q?9a23=3A4xPKiQ/JNWkqoeCBDqohDsWQf/80vqmiGl08q7E?=
 =?us-ascii?q?Luc65cgZ8CTi8qSviFw=3D=3D?=
Received: from mail-eastus2azlp17012055.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.55])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 14:59:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GecbaDH3v7cd6VMf1xv5foMli19nSiOEBTEChSnIDtv/9Pz/tPItNUVPBJIr7wW9ZX4ulhdtGxV+0hZJProXQBbYGEwfkclsFQlm9nKXXo90GkMh+wlmyE5+06oYNmGVZva45u8w7bebCI/essOc7OsM+E0eNO8/zj72o5HKbrTtmw3VE7yPOPP6M4c2xZNpKciscw3txnn6yQXKw/fr894Qtpmv8Ts6xr+uEZMfjAmN/CzRiGl1q+q7lh3BQMtReBpMrzV6jK76lk443+tb8NEkGUqSwe2AMRlDhILM+3em++dgYdR1lgz8DPI2/teBQ8wSyukue91D1Q/QMI6ssw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0D8+38xgCyjMDgKM5G6xVcvVeCNZ4f6ngZJvxZoORXE=;
 b=YH+49kvLG78sT/HZSEtg2j/DvKyJkcFoBwcFlEFy7Ihv+AYNuSHfUB3JWCxGTOwOO3vJLSV8XTOBVtTTjh5Mhj9Y3sd9hx9/1cm/KT1VFbOHOzTr9tfFrz06GBJDxdoLWpalv/I2gyvC5+g1apVLgp7PCUhdl5fEE5p1ylWrMF9G88Vr3AOfBUMy3oNn8E6CcKF3FlO+hCkcny28p0w+4YTV8v69BpDh4o1eqW00Rk9WTRTQLcJWV7fDLZOivEnzymX2Qy5WpFwNUSu+TlTm3zMyqOdasHf5GgL8OpbUdRi5gSxjApW95Q4jOxQPf43fX42aI89f7W9X5QSH9WCGwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0D8+38xgCyjMDgKM5G6xVcvVeCNZ4f6ngZJvxZoORXE=;
 b=R6l3T6Su4oj9kDt+hc/GCagCwJL/uRqQooTjfgRKbrce9F1wD9MPPTkj/cOeehK9KMsrRoFSzZciHVi0m7/bsPajXs+pkRxNjvBBFF3M6R4SpkjNpmQ9fel/ZlO1t48/svivCFP1Z4ACuNdqUR9v3hmYPafhjiFiBN9Y+/rhol8=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH7PR09MB12012.namprd09.prod.outlook.com (2603:10b6:510:351::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Tue, 5 May
 2026 21:59:34 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%3]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 21:59:34 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [EXTERNAL] Re: [USRP-users] Extend X440 to 2 GHz
Thread-Index: AQHc3NY0YG1xgWWdy0KgVmLNcXufHbX/+NYAgAACH1Y=
Date: Tue, 5 May 2026 21:59:33 +0000
Message-ID: 
 <SJ0PR09MB91267624EECE75ED70F03589EC3E2@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912642069B69C9DBF1E66B70EC3E2@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK7KqQNPBeBpycxGaCVV4osFCbfbSKXFhCpD1S5GGpD84Q@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK7KqQNPBeBpycxGaCVV4osFCbfbSKXFhCpD1S5GGpD84Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH7PR09MB12012:EE_
x-ms-office365-filtering-correlation-id: 3e4b19b0-d570-4078-7fd6-08deaaf19792
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|41320700013|38070700021|22082099003|56012099003|8096899003|18002099003;
x-microsoft-antispam-message-info: 
 IZwTMZtcpj3OnwhSNgHUCMbUgCYxUthX7iEdcCG0vfGyP15vKTGUpiP3WoX+/uwZZ/IUDjXGkNJmW9yqD4zS5F7WcwQta3yFdSUo/tl8HzChvr0NoEA7eEAYg2X2P8h3VDBsqjDy5ByIXfcO8alpbIm76bR2cbl+fN+ImIX91dP96xqVGCCdwxNm1TSRgl2EoRsHbsp4hpIU8836QC7Fsk+sHH2Xc8IHuEXYxDrQcuPrAWI5vwGyzIP2YvtQq3Jq9ExLTSBInXJX5GkXsha+/vlXFNAT00FT2f2fn5Tcap+8w4KmaMDJZzfIKHuYxPOXpEZj1SvqLrzIX1aVfnqh9w/IFruqchz/WBYDLlZOZc7z3fr71lOoHS1roH10OtA7vG1uVAXFDJ+yjyytQ2Jl3M6gvMI0UKbO1xWTL19YLRpmLIFoos9S/EI9INSjrugGLkPAWF0StXGoHCWhFBGY6xCZJjRvsWefSKRpb9kRarLI+SbLrumbzS+4PqinvWT2ewRLf5JOwJgGxitODVVO+ZCpkj0udRyQRXMemywsGjmvS6p6AcpGyFg63YteQJ+BjsKS4ZCtkQJwBw7b3VJRqXkSGZ6SfsMKnWYhI+MgL4wLPwY77FGv33aGieoWcW4CsNm2w85i4VfZLu8HGdfJrsyezbQx7AbtlVCgDDZfoK5k0zeJuo+pr+p8x+CFM2cFX5GmI0clR0I5vEeour83/Uwgg4XCQP7K5qmiP9vNDcS8ACZUAOAfwynH9T9kvtqz
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(41320700013)(38070700021)(22082099003)(56012099003)(8096899003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NEFSUnNVbXA4MnovR0RlaGdMZDFuN0ZkS0JvLzFIQjVHQWRqL0dpVjQvWGd3?=
 =?utf-8?B?WnFuWEM5Z2pOTVF4Lzd5S3ZuOExxYi95NCtZalVJb0hTS3g1V21YZnloVkhR?=
 =?utf-8?B?YmFVeVpXOEhXZGRNaTNmTnhiQ2IxNEZqOUZkcTUzd3VKOUExTFFjMUcxek1v?=
 =?utf-8?B?Vm9zVTYyNndybXNMYzI5NVEwanpjNHNBaUhhTlo0NDd5VG42Q3RUY01lRDdo?=
 =?utf-8?B?YjlmWUpubXpHUVBaNTJPTDllUlZTWUl6dnpGOFppT2w0ajZFc1JsczJWQmN4?=
 =?utf-8?B?NSs2bGU2c0tzZ3ozTVZZMXF3d1AxbHJlQkpsN3pvdW9WZ2cwbHJFZjRxMTdI?=
 =?utf-8?B?UlpMcVlyMmZaZEZUOXBPdi9CS0NjZlRaWnpTdFJqYWdKQVpwMGhmUVlneEdo?=
 =?utf-8?B?ajFsSFAzdklaK0dHcERtVHBqcGs2Zk1udERnK3U4MGZEWldhazRRNXNVZlBN?=
 =?utf-8?B?WGMyVUpBdmsrRVFqeXp3MVEyV0NzV0ZEREllczhXeEhHa05tY0tYZTRMVURJ?=
 =?utf-8?B?ZDVBSDBTcHJDMG5tMGVSZ1lUMlhXdkpxM3NOVERJOVZ4a0hLQmhFRjhKY2pE?=
 =?utf-8?B?a2oxbUo2YlFlc2NFQzBFWitCSzBVajAwdlFMZ2lDd1dadFZpYWNoYWVMNXR3?=
 =?utf-8?B?ZDdMMThNSlU3ZDhLV09ldzJvZnE5YkQ0amVTckdaam0vVGxtY1dGd1dDRTZh?=
 =?utf-8?B?cWpJUWRPUW1LZ0J0L2gwMmZhbXNTYTl3OGhvajBJNVdvc2pzU04vL1czcE1k?=
 =?utf-8?B?bUdLZTFtdlZVdlB2bUtQclFrcjdBUFBXcEk3OC9DU2VoYWNBdkdpanV4ZVMx?=
 =?utf-8?B?ZlhQOWVvWjA1TWpIbjVoeWJBWEx6VGQrN3NSWE1GZjVjZEJOZTVyQXUzZUNa?=
 =?utf-8?B?VEc2cDk5RTVZYnBYWktKazh0ZjBOU1AxS1ZUS0ZaZ0xCdWFGOTB0bzhVZnpn?=
 =?utf-8?B?M3JyNFVsN3Ardnk4NXgxbkRCMVMzSlRFU2plWEFhbHV5QnRRZ0o0eWlLd3JX?=
 =?utf-8?B?RXRETVdqaW5CS0RIenF3bWZhajBiN2gwK0VYcjFNbnBUdTdRYXo3cGsrNTB3?=
 =?utf-8?B?ellYNzQ3cVh3SGJGaHFndmtxMWNtZEQxMkE5MzU1TnoxdlpycUFlWHgvdXM3?=
 =?utf-8?B?a0JhcjJsYTNHQ0QwS3pnVFRSTi9Ua3BYU3Jla0JjRXhnOGQxMlJOa1BsQll4?=
 =?utf-8?B?OFY0bWFValpGUmZ1bnZvMStJQUhhVms4Ukp4eENaVzZRaVh3eko5YmFBZjM5?=
 =?utf-8?B?MDdHbG9kZFk3bEwrTjFCSWZJUkxuVW8reUdXeExOQ2JVREV3amRweVBadzU5?=
 =?utf-8?B?MjhsV3dsU0t2em9LWXJFd1REcldCdGRjaUpzVEFZSFA1TXRnSEpzYk01b1c3?=
 =?utf-8?B?eXR3R3ZQNTV4aU9ySGl1QzRhV2Z2Z2lCbTc4dFByb0I5d0FvaFp6dE1UZnQ4?=
 =?utf-8?B?ZTR4MWVxNVdRY2YxS1BianlmYWdYcnNERkNnNzF1MzVycWNuRm9hTUd3YTI2?=
 =?utf-8?B?UVB3bHRSUnd4RkFkL2VlNGxNWWZ1cnAzZFZlZEVUSndnbXF0ZytmbFBCYkJK?=
 =?utf-8?B?K1VxSWJWNGttRTV0K1ZCeUQwYkFGZ0diT2VoVzFyTVEraGNZWDVCQzlMcElZ?=
 =?utf-8?B?WVQ0OTRMZjFqd1NQRFdTMTFRWEpuU1RCZEZ0Ly84djRUWms4N0dFR0F3TW13?=
 =?utf-8?B?eThEcFVuR1V1a20wbjIyYjV4UDcxeHRWK3dxRkc2NnY0eFdVa0FSUzQ5UVZS?=
 =?utf-8?B?cVdQSTVTVE1VOTNHczhQS1MrdGwybFJ5dGgzeFJHMmF1U2FMWTNsbjJlU0hk?=
 =?utf-8?B?RkE3N3Z5bFlYZklMRmNiZCtaV21vWkFoemlranlJdCtOUzRIU080WkdOZ3dp?=
 =?utf-8?B?QkM0SXN5RVVwd3FQOHVkcmZSQlFFSmIyQ1VQVzZhUjFzS2h1enBoZG9lT2Zt?=
 =?utf-8?B?QVo2Q0VSMzNFNlEwYTNFdlNSaGVMSm1MendnNTU1dENyQlNIc2grYWE3M1Z5?=
 =?utf-8?B?RGxTUUZVNDFpQ09LMVVXaDhQcC9QQnMyWXh6bnlFcEd2RTQ3amtweWdXM2cz?=
 =?utf-8?B?bDUwci9PSGwzV0tTZUlKZXIwR2ljUWtPbU9zczFmZElQNDM3RkNQTGFSRFZH?=
 =?utf-8?B?U0RkNVpDVUIzbzduQnJXUXdtY25GaGY0NFd0U2VlNTVxdjFneElNREM2ZEZV?=
 =?utf-8?B?b2NHVmxWKzlaZVVTYWVaNWZyZG5QL1NVNGdPUkZaZi9mKzVtdzhJLzB4dWN5?=
 =?utf-8?B?WXRxUFlwYmpqUzZDNkM0UFlHVGgyRWRrZ1BGL1J4b0Jtckh0cUZYM1B4S3Nr?=
 =?utf-8?Q?RtEkhKn/A38C3jVq4F?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	ds1vecei8XSmV4BGWklq/QWayVmEXUPu9yccxBYM+xyi0ciU3Z2nZ3mfaqA5DtvXy9xOlYR7n192Hl0t70OfnZwwFzFBORhafVajlLDbWTmH6TWQ2P1UBAdJTS94D9gp/TckilBCQlJi4MmMtUECqUJ60QtcKK97HdPZXQ+WPsIT+1uaup/Z1WlGcaPCt8hhllKhqOcYWRjovohIYugmRm1UGpnIM168zGKMsFDp9FrEmuAr/XEj2cpQ/81pYzY4ovG4tHpY07PCQ0eqJXMj0pWRQUwH53BXcX2Q2YtpHly3ju8CuF7KMMmdEpRSEEkMY3UzvNqgnNmihlXpAQuO/Q==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e4b19b0-d570-4078-7fd6-08deaaf19792
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 21:59:33.9891
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR09MB12012
Message-ID-Hash: NYAJ4IKNWTW7X5CFVOUEUJBM3PT536BK
X-Message-ID-Hash: NYAJ4IKNWTW7X5CFVOUEUJBM3PT536BK
X-MailFrom: prvs=578f0e5bc=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Extend X440 to 2 GHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NI6GG7PU7DRZHFHNOK7QFT7ZEAX3TLC3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4203243212080302913=="
X-Rspamd-Queue-Id: EDC554D466A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,aero.org:email]

--===============4203243212080302913==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91267624EECE75ED70F03589EC3E2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91267624EECE75ED70F03589EC3E2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzISAgSSBmb3Jnb3QgdGhhdCB0aGUgWDQ0MCB1c2VzIHRoZSA0IEdIeiB2ZXJzaW9uIG9m
IHRoZSBSRlNvQywgbm90IHRoZSA1IEdIei4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQpGcm9tOiBCcmlhbiBQYWRhbGlubyA8YnBhZGFsaW5vQGdtYWlsLmNvbT4NClNlbnQ6IFR1
ZXNkYXksIE1heSA1LCAyMDI2IDI6NTAgUE0NClRvOiBFdWdlbmUgR3JheXZlciA8ZXVnZW5lLmdy
YXl2ZXJAYWVyby5vcmc+DQpDYzogdXNycC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+DQpTdWJqZWN0OiBbRVhURVJOQUxdIFJlOiBbVVNSUC11c2Vyc10gRXh0ZW5kIFg0NDAgdG8g
MiBHSHoNCg0KDQpEbyBub3Qgb3BlbiBsaW5rcyBvciBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJl
Y29nbml6ZSB0aGUgc2VuZGVyLiBJZiB1bnN1cmUsIGNsaWNrIHRoZSBSZXBvcnQgUGhpc2ggYnV0
dG9uIG9yIGZvcndhcmQgdGhlIGVtYWlsIHRvIE9QU0VDLg0KDQpPbiBUdWUsIE1heSA1LCAyMDI2
IGF0IDU6NDLigK9QTSBFdWdlbmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFp
bHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPj4gd3JvdGU6DQpIaSwNCg0KSSBoYXZlIGFuIGFw
cGxpY2F0aW9uIHRoYXQgbmVlZHMgMiBHSHogb2YgYmFuZHdpZHRoLiAgSSBvbmx5IG5lZWQgb25l
IGNoYW5uZWwuICBIb3cgaGFyZCB3b3VsZCBpdCBiZSB0byBjaGFuZ2UgdGhlIG1heCBzYW1wbGUg
cmF0ZT8gIElzIHRoZSBGUEdBIGJhcmVseSBtZWV0aW5nIHRpbWluZz8NCg0KVGhlIFJGREMgaXMg
c2V0IHVwIHRvIG91dHB1dCA4IHNhbXBsZXMvY2xvY2sgKHRoZSBtYXhpbXVtIHRoYXQgdGhlIGNv
cmUgc3VwcG9ydHMpLiBUaGF0IHdvdWxkIG1lYW4gZm9yIDIgR0h6IG9mIHRvdGFsIHNhbXBsZXMg
Y29taW5nIG91dCBmcm9tIHRoZSBjb3JlLCB5b3UnbGwgaGF2ZSB0byBydW4gd2l0aCBhIDI1MCBN
SHogY2xvY2sgLSB2ZXJ5IGRvYWJsZSBpbiB0aGUgUkZTb0MuIE5vdGUgdGhlIEREUiBpbnRlcmZh
Y2UgY2xvY2sgcnVucyBhdCAzMDAgTUh6LCBhbmQgdGhlcmUgaXMgYSBidXMgY2xvY2sgdGhhdCBp
cyAyNjYuNjcgTUh6IHNvbWV3aGVyZSBpbiB0aGVyZSwgdG9vLiBBIGN1cnJlbnQgZGVzaWduIEkg
YW0gd29ya2luZyB3aXRoIHV0aWxpemVzIHRoZSBERFIgY2xvY2sgZXh0ZW5zaXZlbHkgYW5kIHJ1
bnMgbW9zdCBvZiB0aGUgRFNQIGluIHRoYXQgZG9tYWluLg0KDQpUaGUgYmlnZ2VyIGlzc3VlIG1p
Z2h0IGJlIHRoYXQgdGhlIFJGIGZyb250IGVuZCBpcyBzZXQgdXAgdG8gZG8gcmVhbCBzYW1wbGlu
ZywgYW5kIHRoZSBtYXhpbXVtIHJhdGUgaXMgNC4wOTYgTXNwcyBmb3IgZWFjaCBBREMuIFlvdSBj
YW4gc2V0IGl0IHVwIHRvIGJlIGEgc2hpZnRlZC9kZWNpbWF0ZWQgMiBHSHogb2YgQlcsIGJ1dCBh
bnl0aGluZyBhYm92ZSB0aGF0IDIgR0h6IE55cXVpc3QgZXh0ZXJuYWxseSBuZWVkcyB0byBiZSBm
aWx0ZXJlZCBleHRyZW1lbHkgd2VsbCB0byBhdm9pZCBhbnkgYW5hbG9nIGFsaWFzZXMgdGhhdCBj
b21lIGluLg0KDQoNCkFsc28sIGRvIHdlIG5lZWQgYSBsaWNlbnNlIGZvciB0aGUgMTAwIEdiRSBN
QUMgY29yZT8gIEkgc2F3IGEgd2FybmluZyB0byB0aGF0IGVmZmVjdCB3aGVuIGJ1aWxkaW5nIGEg
Y3VzdG9tIGltYWdlIGJ1dCBhcyBmYXIgYXMgSSBrbm93IHRoZSAxMDAgR2JFIE1BQyBpcyBmcmVl
Lg0KDQpUaGUgMTAwR2JlIEhhcmQgSVAgTUFDIGlzIGZyZWUgYnV0IHlvdSBtYXkgc3RpbGwgbmVl
ZCB0byByZXF1ZXN0IGEgbGljZW5zZSBmcm9tIEFNRC4NCg0KR29vZCBsdWNrLg0KDQpCcmlhbg0K

--_000_SJ0PR09MB91267624EECE75ED70F03589EC3E2SJ0PR09MB9126namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpUaGFua3MhJm5ic3A7IEkgZm9yZ290IHRoYXQg
dGhlIFg0NDAgdXNlcyB0aGUgNCBHSHogdmVyc2lvbiBvZiB0aGUgUkZTb0MsIG5vdCB0aGUgNSBH
SHouJm5ic3A7PC9kaXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxl
PSJkaXNwbGF5OmlubGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlk
PSJkaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJp
ZiIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IEJy
aWFuIFBhZGFsaW5vICZsdDticGFkYWxpbm9AZ21haWwuY29tJmd0Ozxicj4NCjxiPlNlbnQ6PC9i
PiBUdWVzZGF5LCBNYXkgNSwgMjAyNiAyOjUwIFBNPGJyPg0KPGI+VG86PC9iPiBFdWdlbmUgR3Jh
eXZlciAmbHQ7ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmcmZ3Q7PGJyPg0KPGI+Q2M6PC9iPiB1c3Jw
LXVzZXJzICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSZndDs8YnI+DQo8Yj5TdWJqZWN0
OjwvYj4gW0VYVEVSTkFMXSBSZTogW1VTUlAtdXNlcnNdIEV4dGVuZCBYNDQwIHRvIDIgR0h6PC9m
b250Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGRpdj4NCjxwIHN0eWxlPSJiYWNrZ3Jv
dW5kLWNvbG9yOiM1RThBQjQ7IGNvbG9yOiNmZmZmZmY7IGZvbnQtc2l6ZToxMHB0IWltcG9ydGFu
dDsgcGFkZGluZzoxZW0iPg0KPHN0cm9uZz5EbyBub3Qgb3BlbiBsaW5rcyBvciBhdHRhY2htZW50
cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyLiBJZiB1bnN1cmUsIGNsaWNrIHRoZSBS
ZXBvcnQgUGhpc2ggYnV0dG9uIG9yIGZvcndhcmQgdGhlIGVtYWlsIHRvIE9QU0VDLg0KPC9zdHJv
bmc+PC9wPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IGRpcj0ibHRyIj5PbiBUdWUsIE1heSA1LCAy
MDI2IGF0IDU6NDLigK9QTSBFdWdlbmUgR3JheXZlciAmbHQ7PGEgaHJlZj0ibWFpbHRvOmV1Z2Vu
ZS5ncmF5dmVyQGFlcm8ub3JnIj5ldWdlbmUuZ3JheXZlckBhZXJvLm9yZzwvYT4mZ3Q7IHdyb3Rl
OjwvZGl2Pg0KPGRpdiBjbGFzcz0ieF9nbWFpbF9xdW90ZSB4X2dtYWlsX3F1b3RlX2NvbnRhaW5l
ciI+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHgg
MHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7IHBh
ZGRpbmctbGVmdDoxZXgiPg0KPGRpdiBjbGFzcz0ieF9tc2ctNDk2NTY5NjY0Njg0MTQwODg3Ij4N
CjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1i
ZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJp
ZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KSGksPC9kaXY+DQo8ZGl2IHN0
eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2Vy
dmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6
cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9z
LEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNh
LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkkgaGF2ZSBh
biBhcHBsaWNhdGlvbiB0aGF0IG5lZWRzIDIgR0h6IG9mIGJhbmR3aWR0aC4mbmJzcDsgSSBvbmx5
IG5lZWQgb25lIGNoYW5uZWwuJm5ic3A7IEhvdyBoYXJkIHdvdWxkIGl0IGJlIHRvIGNoYW5nZSB0
aGUgbWF4IHNhbXBsZSByYXRlPyZuYnNwOyBJcyB0aGUgRlBHQSBiYXJlbHkgbWVldGluZyB0aW1p
bmc/PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+VGhlIFJGREMgaXMgc2V0IHVwIHRvIG91dHB1dCA4IHNhbXBsZXMvY2xvY2sgKHRo
ZSBtYXhpbXVtIHRoYXQgdGhlIGNvcmUgc3VwcG9ydHMpLiBUaGF0IHdvdWxkIG1lYW4gZm9yIDIg
R0h6IG9mIHRvdGFsIHNhbXBsZXMgY29taW5nIG91dCBmcm9tIHRoZSBjb3JlLCB5b3UnbGwgaGF2
ZSB0byBydW4gd2l0aCBhIDI1MCBNSHogY2xvY2sgLSB2ZXJ5IGRvYWJsZSBpbiB0aGUgUkZTb0Mu
IE5vdGUgdGhlIEREUiBpbnRlcmZhY2UgY2xvY2sgcnVucw0KIGF0IDMwMCBNSHosIGFuZCB0aGVy
ZSBpcyBhIGJ1cyBjbG9jayB0aGF0IGlzIDI2Ni42NyBNSHogc29tZXdoZXJlIGluIHRoZXJlLCB0
b28uIEEgY3VycmVudCBkZXNpZ24gSSBhbSB3b3JraW5nIHdpdGggdXRpbGl6ZXMgdGhlIEREUiBj
bG9jayBleHRlbnNpdmVseSBhbmQgcnVucyBtb3N0IG9mIHRoZSBEU1AgaW4gdGhhdCBkb21haW4u
PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGUgYmlnZ2VyIGlzc3VlIG1pZ2h0IGJl
IHRoYXQgdGhlIFJGIGZyb250IGVuZCBpcyBzZXQgdXAgdG8gZG8gcmVhbCBzYW1wbGluZywgYW5k
IHRoZSBtYXhpbXVtIHJhdGUgaXMgNC4wOTYgTXNwcyBmb3IgZWFjaCBBREMuIFlvdSBjYW4gc2V0
IGl0IHVwIHRvIGJlIGEgc2hpZnRlZC9kZWNpbWF0ZWQgMiBHSHogb2YgQlcsIGJ1dCBhbnl0aGlu
ZyBhYm92ZSB0aGF0IDIgR0h6IE55cXVpc3QgZXh0ZXJuYWxseSBuZWVkcyB0byBiZSBmaWx0ZXJl
ZA0KIGV4dHJlbWVseSB3ZWxsIHRvIGF2b2lkIGFueSBhbmFsb2cgYWxpYXNlcyB0aGF0IGNvbWUg
aW4uPC9kaXY+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPGJsb2NrcXVvdGUgY2xhc3M9InhfZ21haWxf
cXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7IGJvcmRlci1sZWZ0OjFweCBz
b2xpZCByZ2IoMjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXYgY2xhc3M9Inhf
bXNnLTQ5NjU2OTY2NDY4NDE0MDg4NyI+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZv
bnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENh
bGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCww
LDApIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3Nf
RW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1z
ZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KQWxzbywgZG8gd2UgbmVl
ZCBhIGxpY2Vuc2UgZm9yIHRoZSAxMDAgR2JFIE1BQyBjb3JlPyZuYnNwOyBJIHNhdyBhIHdhcm5p
bmcgdG8gdGhhdCBlZmZlY3Qgd2hlbiBidWlsZGluZyBhIGN1c3RvbSBpbWFnZSBidXQgYXMgZmFy
IGFzIEkga25vdyB0aGUgMTAwIEdiRSBNQUMgaXMgZnJlZS48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGUgMTAwR2JlIEhhcmQg
SVAgTUFDIGlzIGZyZWUgYnV0IHlvdSBtYXkgc3RpbGwgbmVlZCB0byByZXF1ZXN0IGEgbGljZW5z
ZSBmcm9tIEFNRC48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pkdvb2QgbHVjay48L2Rp
dj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkJyaWFuPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0K
PC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_SJ0PR09MB91267624EECE75ED70F03589EC3E2SJ0PR09MB9126namp_--

--===============4203243212080302913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4203243212080302913==--
