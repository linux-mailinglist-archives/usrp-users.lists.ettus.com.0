Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CqeFHftwmkdnQQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 21:00:55 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE1131C017
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 21:00:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B0773867A0
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 16:00:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774382453; bh=TRVN6V0ZEVWhSBnVQ2jmIAoNNPQkf734HGxpxezVWFo=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bjVnluw3Hx5VsPlb4qlyYMZgykoMvx0IaY8A/4IOy2YFZ2Oej6Sr7/+ZzAQAsbR6v
	 48Cnl+mFxpigWi9+NyAjJ/tPGLjll/wD2kdQ7pCs8NwzIxCxnXzxpy+msJmMOeF5SS
	 gYaIcJmxhWfkE9+DQHtU5xzjkP+BDHnq6FHFyfcURzX9VlaAcr802fNwecflOczRLm
	 gYxRtCwTTEtv1WNxCRlh12GwWQISu9pdIkfJa9oT4brnoo3FqmCQLVUlRNm+1zot8J
	 vEqm4ntETjMOayaVFDqK1pZv9rqRfFYlZKoClpxaaQ1Cm56Vdyx8A70LM4Eah/ohRp
	 pL4F4CGreQyyA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 804273860F0
	for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2026 16:00:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="FfDNJfeJ";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="le2SBHfn";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1774382434; x=1805918434;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=KshFDx545X3sagutYm5za+IYc/+UOdVOr1TkQKOW3os=;
  b=FfDNJfeJ4yubogRuXMNfJ1HebK7Sice609qv8/vUpAEONtYcFc+CLsqn
   RXkDvUyBV8sbFYrDT6XpqkT5lkZ1LtdT+CSGBVO58Cn/6P8Ifp1K7fqCo
   FcnYpzFKVmcIYj/xu1Tyd28TTMPhTvVnWiU5bxPeFeI1/kquaYTOMJPdg
   Y=;
X-CSE-ConnectionGUID: IPhREIN4T7uqkb50rMYhLQ==
X-CSE-MsgGUID: qMDWsyFtSVO7iWyw+HFRpA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="8808948"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000";
   d="scan'208,217";a="8808948"
X-IPAS-Result: =?us-ascii?q?A2HlAgAh7MJpjhIOXShSBQOEFgGBA0EBQwKBaoRYg0+LQ?=
 =?us-ascii?q?IJlA4ETkDeFeYZrgREDTQoPAQEBAQEBAQEBBwIuAQIgBAEBAwEDggyCdAIWj?=
 =?us-ascii?q?Q8nOBMBAgQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBO?=
 =?us-ascii?q?QUOO4ZPDYMWcYElAQEBAQEBAQEBAQEBAR0CNVUBAQEBAwEiHQEBDCALAQ8CA?=
 =?us-ascii?q?QgRBAEBKAMCAgIlCQEUCQgCBAgGBQgVBIJhAYIdBwQLBwM2r3A3eoEygQGCD?=
 =?us-ascii?q?AEBBgQEgQDaJxhjgWcJFYE4g32BPzOCZQEBKoE1Aw6CS4EhGYR6NoFVRIEVQ?=
 =?us-ascii?q?oIwOD6EBAoBDQUBBwEbBg8KFQgJgxQ6gi+CDRlSKAoKEgsPPwUGHBMgIwEBH?=
 =?us-ascii?q?AWDKmJ1UiOBC0R3FgEBATl8hhNSciIDJjMsAVUTFwsHBV5FQwOBBiNLBS0dg?=
 =?us-ascii?q?SMhHRcVH1gbBwUSISqBbA+GaXkDLl4aDiICOVxKPgtSBYIdAoEuAwttPTcUG?=
 =?us-ascii?q?wMEgTUFjBRcNoI1ehMBMBtxgSEYlw6LYI5flGM0B4QfgV4GDIoujT6IMheEB?=
 =?us-ascii?q?IFXpRCZBoJYoHKFTAIEAgQFAhAIgX9lKnAzGjBDggFmCUkZD44tDQmDXoZQw?=
 =?us-ascii?q?WZ4PQEBBwIHDQMLgWiRH2ABAQ?=
IronPort-PHdr: A9a23:bmdP4xYZcSl3QTYUex+1yGj/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:ttov06h59JhAPbavIZY2NP43X161ShAKZh0ujC45NGQN5FlHY01je
 htvCDuBPv+OZWGgeNolbY6w8E4OsMSEyN5iGgY+rSkxFygW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScsjfngqp3UUbebYXEZqTdMEXpn0VQ63bZi2uaEuPDhayuVo
 9T+vsbDD1Gs3j9wIwo85rmKwP9VlKyaVAgw4BpkPpingHeEzyNLVMlFefntR5fFatA88tCSF
 r6rII6RozuxEycFUruNjrv9e0sWdb/eVSDmZq1+BsBOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvCVwrxFC3G0JAklVUFO0OevzXFSKqV/xWWeG5fn660G4E3boeT0Uwu4aI1D3
 aVwFdwDUvyMr8OOwIiWa88wups+NcrhYdsFn0Bg6QiMWJ7KQbibK0nLzeRxjQ8K3pFlIK6GP
 YwedCZlawnGb1tXIFALBZkineCuwH7ibzlfr1HTrq0yi4TR5FAplum2doOJPIXaLSlWth/wS
 mbu8nn2DxcXctOFwCub/2iEj+LVmmX8Qo16+LiQpq4y0AzPlgT/DjUPcHeEuuiXlnWAfI1eF
 F0LuQoAl7AboRnDot7VBEbi/CHsUgQnc8dLCfV/9RqA0LH85weCGnNCQyJddcdgv8gzLRQ13
 1OE2d3oCzFHvaGJVGnb/bCRxQ5eIgAQJG4GIDQDUBcF6NTlvJs6ig/UR8RnCPfq1oStQWigh
 TeXsCI5mrMfy9YR0Lm29kzGhDTqoYXVSgky5UPcWWfNAh5FiJCNRrSo03X6y6p8c5uATVPc5
 GIhqsi61bVbZX2SrxBhVtnhC11A2hpoGDjVgFoqBJ486zSm9ni/Z4lU/Sp3NkNxa5lcIGexO
 R+Vvh5N7phOOnfsdbVwf4+6F8Uty+7nCMjhUffXKNFJZ/CdlTNrHgkxPiZ8PEi0yiDAdJ3T3
 7/HKa5A6l5BWcxaIMKeHbt17FPS7nlWKZnvqW/HI+SPiuHEOCH9pUYtNVqFdOci662Y6A7S6
 c43CvZmPy53CbWkCgGOqNZ7BQlTcRATW8qqw+QJLbTrClQ9Rwkc5wr5nelJl3pNw/4Nzr+gE
 7DUchMw9WcTclWZdFnaMyE7M++HsFQWhStTABHA9G2AgxALCbtDJo9FH3frVdHLLNBe8MM=
IronPort-HdrOrdr: A9a23:qchf4q87YUF6Jo2ZXKluk+Fydb1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKQodcdDpAtjifZquz+8O3WBxB8boYOCCggeVxe5ZnOzfKlHbehEWs9QtrZ
 uIEJIOQuEYb2IK6/oSiTPQe7lP/DDEytHQuQ609QYOcegeUdAF0+4PMHf/LqQZfml7LKt8OI
 uX58JBqTblQnIKc8S9CEACWujIt/fLmJjlbRNuPW9r1CC+yReTrJLqGRmR2RkTFxlVx605zG
 TDmwvloo2+rvCS0HbnpiDuxqUTvOGk5spIBcSKhMRQAC7rkByUaINoXKDHlCwpoduo9E0hnL
 D30lkd1oVImjLsl1OO0FjQMjrboXQTAkrZuB+laDXY0InErXkBerd8bMpiA2fkAgwbzZ1BOe
 twrhykX5Y7N2K+oA3to9fPTB1kjUyyvD4rlvMSlWVWVc8EZKZWtpF3xjIiLH4sJlOP1GkcKp
 gYMOjMoPJNNV+KZXHQuWdihNSqQ3QoBx+DBkwPoNac3TRalG1wixJw/r1Wol4QsJYmD5VU7e
 XNNapl0LlIU88NdKp4QOMMW9G+BGDBSQ/FdGiSPVPkHqcaPG+lke+/3JwloOWxPJAYxpo7n5
 rMFFteqG4pYkrrTdaD2ZVamyq9NVlVnQ6duP22y6IJyYEUHoCbQBFrYGpe4/ednw==
X-Talos-CUID: 9a23:5KQ4SGO3yItAGO5DeRFnzmM1PJwZLWDEz32Ne1WdOGZNcejA
X-Talos-MUID: 9a23:tRmchwi4I14pN6H8gonSNMMpLeJE3L+/Jlw2r7JZuvaVKm9QFQ2FpWHi
Received: from mail-southcentralusazlp17010018.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.18])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 13:00:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=byOiLCWU9VbT7YhPK/AC4hv6X9xBX69pj83ADk+/brQq3OxxahGcobV1Ylqui0VAF2tvyk00IchAEa75Ihkp7iSNyI4xsi8gKgZhpUSlmxNNmvtNRm8gItRKQe4O9CHO5J6YfL64Bctwi+AMRqfX75WoEVHLG6nopepIH1E1+p67ppflhBUhPSvxUgeVpAqxJKPzg0cqbo84lwK3gGThYSJxNX13ZZ/eaYR9ve4KsL4AmL04OAXrCzZBYAZXnu0p52vL7A1eI/TToM8UznKeGxMcLgVdrv5LDHdjjXi+yDqQpUwcFLwpiQm7vSVe36wHuCGXg4soX/z/xvmnUGRn9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KshFDx545X3sagutYm5za+IYc/+UOdVOr1TkQKOW3os=;
 b=BYGqhMX2yHDCYVjm00OFQW8nSiFpMv1vQj6/EBLGEbfbxw/CRCsF7w2FRUAp6Dtsjp41oDm7ZeVzBM8jo1HJU30soi/d9jDJmeHPRUEvQk/tPb47urxe8uJPeWn7BSeR9lxBP4LsaWMxxArgkpeLJoWYHUmQWyNWMedvi/RujvHL20zQeOSQvTucdSOEK5nIHSBHxorKgDZsWNuCRlxj4LLzYCOO2YFax5MZoA2vd/OLjGfpEwwOisk1Sd/r3LfOFTy33XPIfIu2bpX/azhyhF1Sgvuc4sZELgLSYa7aJ6PyFxHT3+uP0wl1n+TV2NvWGYIMj3TJGmdwXzvvB0wDqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KshFDx545X3sagutYm5za+IYc/+UOdVOr1TkQKOW3os=;
 b=le2SBHfnPyiZFp3pIRx3/Hy9pgAQe6D5ZcKAY+EcUQ0e9I+YD7j31HVx4dj87MJfA0MuKSzg+7Gqdjr1aDyU+z/MPOKdgK48+ZdlJv4HIr8Jr0eNOzGLzMRwOqr/NAbkw+2Irq/kXHV34MmEJSQAXeKU+KgNJ0tGS/nrhYMMerg=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB9273.namprd09.prod.outlook.com (2603:10b6:806:285::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.31; Tue, 24 Mar
 2026 20:00:26 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 20:00:26 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [EXTERNAL] Re: [USRP-users] Re: IP locked for X440 RFNoC build
Thread-Index: AQHcrMLQBGp+5ilY60icOpb46GQ1OrWgR3oZgB3uvwCAAAHDPA==
Date: Tue, 24 Mar 2026 20:00:26 +0000
Message-ID: 
 <SJ0PR09MB9126C09D08C21314C6EEAC23EC48A@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912699CCC9BC55341AD91928EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB912636EC994B2FF3946E78F1EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAFche=hHeG9-4WXX+OZzkYUPL5cG4aqgWH+nT0dax+B-8+mp_Q@mail.gmail.com>
In-Reply-To: 
 <CAFche=hHeG9-4WXX+OZzkYUPL5cG4aqgWH+nT0dax+B-8+mp_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB9273:EE_
x-ms-office365-filtering-correlation-id: 830a5e7e-d773-424e-b8fa-08de89dffddc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|366016|41320700013|8096899003|38070700021|7053199007|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: 
 SJkN3/NmZ1g02U7Hib85VAP8E/W0hyFPJzp6ct3u+0QoKrLfzTaCX9+mzKH8Qb27aXOZCaS+GJrfGZroQzjvnuP71UK8HCc+yK4VZbmA+bHq3TvnnPQndFBRJpHJdATjpOzfiJ/uGDORICceAPuGEHMWAa37xKXssnOrD3YWh+02zrJ76eJ5nyJtyl2ctcmQwRI4YHitQLI1l7CtPEqLTrlz3FGdw7LTtNCcZWV//dwWzJU8E2i2YvDnN8km+XyofJH2g3Bl9shPAvxL2YuYu/pBeMPZqN6oSmRoDRWMa4Rx+5VVmC4RbL8+M90sJQYzOETy16qHPAs1NA+v+aP+jVgLITktnqkihvhEaRXHYggzQPTFXetUxWpVjEao1ri+bEvImLOgBiF0Ryk6I6iOZvzTV1Aua2pXD86EDBdA77ihhIaPb3SVivLmVkQ9EKGmzsS+pXEZoGkqmGs25Xt3pV9hs2aVeTM+5vA7gkNU5y0mTAQUP9AxpNejBuik5gS/VwXHaTFH42N4xHIai6bjWc24ASd0vdkNmKOg7AaU4JjXurnl6SkWGG/OpyABs41snfff6tbSde+wXuqrsBUfbYWffLH7yk0oDdmSi3ZvvU2iNncFANXtpo50H/MXOoiiPJNz+Pyu9jp+X0o6iG2i+FVVhvITabVCkpJOUwipTobpE6csHwi8O7ktjCPpLexJhkYUT2m5W2cPTU44B8D5icb25xXMduooC3v3YlIKc8UDhLZsNEFjpUjksEVWJZ/gPqhH5GNHukRUbAWkqwCtyXvuLpx+XyUfHeqGltM6vTE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(41320700013)(8096899003)(38070700021)(7053199007)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UWRvOThXQ2dwd3ZRdC8zT1hHY0ZlNlQvRUJxK0VHTUo4WWlXWW9GbzV4V0g5?=
 =?utf-8?B?QU8wRVJKdHVNUVNVUC9VZTdEL09NemFiUGNTWFI1cGwvcDdoMmxEVFhHUnp3?=
 =?utf-8?B?L1VYMk9meC9UK0N5SjNKNU02YVJZeG4xTkhrZEJkajJxQkxiaFJPN0Z3RDda?=
 =?utf-8?B?bnJGMHdrR2pQbk5qWmFqWHZMVFlhSHIrSFR6c0RZbVhqeVN3RW10WWRkRnky?=
 =?utf-8?B?MFBPODZrL2pmUVVGWmVZQ1BoR1Aza0kyY2hPRm9WOGh1dUZKdm5TRFBpdTdV?=
 =?utf-8?B?QktQWSt3bVhwUkxwVXMzV3JVZHZucDZBYmNDQTNlSGFXWEJFcVQ5b3p0RmJT?=
 =?utf-8?B?TnJkVW4rczlvQ05na01VRk1Ua2UzbjBiQkgxOSszMWV1T0YzeWxCbFlQbGtZ?=
 =?utf-8?B?MzU2QnU0UzRIUi8rMkNMajJ4SERCY2lWc2trb29UWlBzb2R5RFVlRDkyOHRi?=
 =?utf-8?B?dGo1ZTlyb0lBZEFHOFJJODY0RnE2VTJOV1RGNjErS0dGdUhhOEU2emo1Tm95?=
 =?utf-8?B?K3g2MG12T2ZiUkIzOVhheGFXSnFBRnNuOEV2ckRnT09RKys4NFp3bEdQV0p2?=
 =?utf-8?B?c3hqMEJlM3lHNTdidm9yR2VobTBzRTRwaWQzb09ZeUc4STR5a3drc2hDWGMw?=
 =?utf-8?B?VElsZU1EcnNyb1ZWWEVsOTAyYTVDL0FhQnRzZ2tObWtkcHB2Myswelp3a0Rl?=
 =?utf-8?B?VFpNMEl4TnVKWlcrT09oc3dlL0xkUTE3YVdLUmlSd1k3SlRWNVhZN05qYmFI?=
 =?utf-8?B?eUpEUFpxNWVpU2ozZXJkM2xFMUpWeFhhRnBXWU12SGl0Z2IxTkp0dVBISHps?=
 =?utf-8?B?RWczOExKS1pQa2U4bmsxQk9tNEY5cFhaN01aa2U4WHpaUWFZaVJZSW5CU1NZ?=
 =?utf-8?B?dmxVRVcwTDBVREZiUXdhV1pTbkg4bHFjZi9hMXE1ck00RHVZVzREYUQzNmVZ?=
 =?utf-8?B?VGJ5T3ZkT2lhQndNM2NFMjlFZHFiUG9sVG1DMEJMR2JWWlhFZ2VNWVE4MHZi?=
 =?utf-8?B?OG9UaWZJd3hPbXhXWEE4WithUkwyTTRVbFlRUGh0d05kM2VhaFZoS00wazQy?=
 =?utf-8?B?UHhDdWo5T0lSbjFKMzdGNFBLZnhTdTlBU2NCaDZYRHN0OUF3eDJWR2hSNElZ?=
 =?utf-8?B?Z0ZmcFpmREZWeTVXZ2RJYUNIK0d5SjF4OGlPREtreHVwRWYvWlYxbDZkRVNq?=
 =?utf-8?B?S0hzZk5aNDVnb0NHc01MaU1WUDhyOWJpSEllTlZ2Yks2YUlXa09jMzc4dlBj?=
 =?utf-8?B?QndaaUUrZjNYYmFPa1dLZllkb2xGc3l6UERWRmE0cFhkYjNUWHZJN0lrdk92?=
 =?utf-8?B?bVNhdWlITlZtZGxXM0lncEhhWjFXcEkydGxNcWo4b21taW9JdFcvVExmSitz?=
 =?utf-8?B?eFg1Nk0yWk5HZVM3cDREaGdmcnl2REwrdlc2dko4OWxOd043Q3V5UzYxd2tN?=
 =?utf-8?B?VGJjU21TN1QyNERiV2ZJU1lzc2JhSEtKTUYxTjA1UWNpUUU1L2ZTV3hXRFJv?=
 =?utf-8?B?Mkh1eWEvOU9JVjEyclNoeWtDaTNrUVVhSHBSTVJCNFk5Vm1RQjhEelAvTU1h?=
 =?utf-8?B?bFJXNEliOHlnMlNsY3Q4dWpVbVRUUldwSENEZjFKZ3M2YmZWU3g0ZjBDOENw?=
 =?utf-8?B?K3cyMDFuaWliVnJKeDFsUGhMREQwMXp4ckdaUzB5TTdKUEs5V2Uyb3Z6S2VS?=
 =?utf-8?B?Y1dLakxGTGY2TFB2NUJnRGpGaG5VWnJkMjllelcvM09maGhDNW45Y1Z1OG1C?=
 =?utf-8?B?VlR2RUltQ0V5Q3hxU2xpSlA1K0N0UGt0ZFUrdkg1eFl5eVpjU2dCYTQvUzRT?=
 =?utf-8?B?bHFSelpIa3hvY1loZWhVZkJpMGd0eW94ZmFnd0p2ZStqQ2ZpbFh5VWxiNXhk?=
 =?utf-8?B?OHlFeXR1Mm5LY3BHUnprcGgzMjBEeTcvVkcwZS8wa2hGT2YrZWdudFo2ZUR2?=
 =?utf-8?B?dHpXOEppMEF4aXVLWHdjR0tYZ3NNVVVheUVDdzNrY0Z3UzdaTkhtNDNPT2Vt?=
 =?utf-8?B?eVpnVmp0ai9VUHZ1QzZPTkJkRlJZckllQVJlS2o2dXlHVEZMT2lnUVhVUE50?=
 =?utf-8?B?MUc3eUxrbHpJdHlDaEttdEZvc1l2OWFKdUx1R0tGQnFBSkwwTU1HaDRYSmc3?=
 =?utf-8?B?YWZURXdZa3ErNUljUXNOeTgvb3M4b25TQlBOcGhFUUJXK3M0ZXdlRWRObXJE?=
 =?utf-8?B?enovcC9DdGdNRzIxdE85WnR2ekdWM21ObTR3aFlPUGhzNWZncHZIeGF6dkRZ?=
 =?utf-8?B?bmY2QWkyMkRQSXJVWkxXVm9Rb1hOQmNhNTlEMWJ5Rm1IazVUT3A1Wm9wdE94?=
 =?utf-8?Q?96Mns0ZFsVEbBeb1IA?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	HQoc4zWmrJKnwrHtDvD7ZDqcyZxeMpSAnDubyRpK1lJsc+3iHjN0HhQE1j4kzq/ck3W6tQqCA4on8PMfiMVsAAd/SetHrW5ao++tSC6HEwkhwib6azWws+qoWPxCZrNJ4oO9qCrixxV/hyJvi62a7Z2UiTs0HnyzjlVG2ke9YCbiUcuLiybShRj2p6i0BImKA1yoZR4vSdVo+SIbu+6GxhLuWlzYZxPPBe4LCeGeshyWJ/vQRux0A+gOrODdac3vgm13ZzCFz23Byewn9GRQS7Tuq/SM6z/AIzO7ar5FoBZS3vIcAUH/Zo5jzgLw5RWehh+7GOy2gNSnLKv//kvpMQ==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830a5e7e-d773-424e-b8fa-08de89dffddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 20:00:26.1974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB9273
Message-ID-Hash: PFVD4URQVPIYFPUOUMZOTT35WVHFSOA6
X-Message-ID-Hash: PFVD4URQVPIYFPUOUMZOTT35WVHFSOA6
X-MailFrom: prvs=536119ed9=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Re: IP locked for X440 RFNoC build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GLDTPG4R54Z3476WTDVUOJX2BKZEEGSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1354480479675951445=="
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,aero.org:email,mm2.emwd.com:helo,mm2.emwd.com:rdns,ettus.com:email,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 7AE1131C017
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1354480479675951445==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126C09D08C21314C6EEAC23EC48ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126C09D08C21314C6EEAC23EC48ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLiAgTXkgaXNzdWUgd2FzIHRoYXQgSSBhcHBsaWVkIHRoZSBwYXRjaCBpbmNvcnJlY3Rs
eSDigJQgaXQgcmVwb3J0ZWQgdGhlIGNvcnJlY3QgdmVyc2lvbiBidXQgdGhlIHNvZnR3YXJlIHdh
cyBzdGlsbCBvbiB0aGUgb2xkIHZlcnNpb24uICBvb3BzLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCkZyb206IFdhZGUgRmlmZSA8d2FkZS5maWZlQGV0dHVzLmNvbT4NClNlbnQ6
IFR1ZXNkYXksIE1hcmNoIDI0LCAyMDI2IDEyOjUzIFBNDQpUbzogRXVnZW5lIEdyYXl2ZXIgPGV1
Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPg0KQ2M6IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPg0KU3ViamVjdDogW0VYVEVSTkFMXSBSZTogW1VTUlAtdXNlcnNdIFJlOiBJUCBs
b2NrZWQgZm9yIFg0NDAgUkZOb0MgYnVpbGQNCg0KDQpEbyBub3Qgb3BlbiBsaW5rcyBvciBhdHRh
Y2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUgc2VuZGVyLiBJZiB1bnN1cmUsIGNsaWNr
IHRoZSBSZXBvcnQgUGhpc2ggYnV0dG9uIG9yIGZvcndhcmQgdGhlIGVtYWlsIHRvIE9QU0VDLg0K
DQpVc3VhbGx5IHRoaXMgaGFwcGVucyB3aGVuIHBlb3BsZSBtaXggVml2YWRvIGFuZCBJUCB2ZXJz
aW9ucywgb3IgaWYgeW91IGhhdmUgc3RhbGUgYnVpbGQgYXJ0aWZhY3RzIGZyb20gYSBwcmV2aW91
cyBidWlsZC4gVHJ5IGNsZWFuaW5nIHRoZSBidWlsZCBkaXJlY3Rvcnk7IHRoaXMgb2Z0ZW4gcmVz
b2x2ZXMgdGhlIGlzc3VlLg0KDQpUbyBjbGVhbiBpdCB1cCwgZ28gdG8gdGhlIGJ1aWxkIGRpcmVj
dG9yeSAoY2QgYC9ob21lL2VnMjY2NDgvdWhkLWdpdC9mcGdhL3VzcnAzL3RvcC94NDAwL2ApIGFu
ZCBjbGVhbiBldmVyeXRoaW5nIHNvIHRoYXQgVml2YWRvIGNhbiByZWdlbmVyYXRlIGl0IGJ5IHJ1
bm5pbmc6DQoNCiAgICBtYWtlIGNsZWFuYWxsDQoNClRvIGJlIHN1cmUgeW91IHJlbW92ZWQgdGhl
IG9mZmVuZGluZyBJUCBmaWxlcywgeW91IGNhbiBhbHNvIHJ1bjoNCg0KICAgIHJtIC1yIGJ1aWxk
LWlwDQoNCk1ha2Ugc3VyZSB0aGUgZGlyZWN0b3J5IGluIHRoZSBlcnJvciBtZXNzYWdlIGlzIGRl
bGV0ZWQuIEFzIGEgVml2YWRvIHZlcnNpb24gY2hlY2ssIHlvdSBjYW4gcnVuOg0KDQogICAgc291
cmNlIHNldHVwZW52LnNoDQoNClRoaXMgc2hvdWxkIHJ1biBzdWNjZXNzZnVsbHkgd2l0aG91dCBl
cnJvciBhbmQgcmVwb3J0IHRoYXQgaXQgZm91bmQgdGhlIGNvcnJlY3QgVml2YWRvIHZlcnNpb24g
KGB2MjAyMS4xX0FSNzY3ODBgKS4gQWZ0ZXIgdGhhdCwgdHJ5IGJ1aWxkaW5nIGFnYWluLg0KDQpX
YWRlDQoNCk9uIFRodSwgTWFyIDUsIDIwMjYgYXQgMTI6NDjigK9QTSBFdWdlbmUgR3JheXZlciA8
ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFpbHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPj4g
d3JvdGU6DQpTb3JyeSBmb3Igc3BhbW1pbmcgdGhpcyBsaXN0IOKAlCBpdCB3YXMgbXkgbWlzdGFr
ZSDigJQgdGhlIFZpdmFkbyBwYXRjaCB3YXMgYXBwbGllZCBpbmNvcnJlY3RseSBzdWNoIHRoYXQg
aXQgcmVwb3J0ZWQgdGhlIG5ldyB2ZXJzaW9uIGJ1dCBkaWQgbm90IGFjdHVhbGx5IHVwZGF0ZSB0
aGUgc29mdHdhcmUuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogRXVn
ZW5lIEdyYXl2ZXINClNlbnQ6IFRodXJzZGF5LCBNYXJjaCA1LCAyMDI2IDk6NDUgQU0NClRvOiB1
c3JwLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+Pg0KU3ViamVjdDogSVAgbG9ja2VkIGZvciBYNDQwIFJGTm9DIGJ1aWxk
DQoNCkkgYW0gdHJ5aW5nIHRvIHJlYnVpbGQgWDQ0MCBpbWFnZSBYNF8yMDAuICBObyBjaGFuZ2Vz
IHRvIHRoZSB5YW1sICh5ZXQpLiAgR2V0dGluZyBhbiBlcnJvcjoNCg0KIFtmaWxlbWdtdCAyMC0x
MzY2XSBVbmFibGUgdG8gcmVzZXQgdGFyZ2V0KHMpIGZvciB0aGUgZm9sbG93aW5nIGZpbGUgaXMg
bG9ja2VkOiAvaG9tZS9lZzI2NjQ4L3VoZC1naXQvZnBnYS91c3JwMy90b3AveDQwMC9idWlsZC1p
cC94Y3p1MjhkcmZmdmcxNTE3LTJlL2hiNDdfMXRvMi9oYjQ3XzF0bzIueGNpDQoNCg0KICAqDQpU
aGUgVml2YWRvIHZlcnNpb24gaXMgY29ycmVjdC4NCiAgKg0KVHJpZWQgaXQgZm9yIGJvdGggdGFn
IDQuOS4wIGFuZCB0aGUgbWFzdGVyIGJyYW5jaCDigJQgc2FtZSBlcnJvcg0KDQpTdWdnZXN0aW9u
cz8NCg0KDQpFdWdlbmUgR3JheXZlciwgUGguRC4NClByaW5jaXBhbCBFbmdpbmVlcg0KMzEwLTMz
Ni0xMjc0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFp
bHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20+DQo=

--_000_SJ0PR09MB9126C09D08C21314C6EEAC23EC48ASJ0PR09MB9126namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpUaGFua3MuJm5ic3A7IE15IGlzc3VlIHdhcyB0
aGF0IEkgYXBwbGllZCB0aGUgcGF0Y2ggaW5jb3JyZWN0bHkg4oCUIGl0IHJlcG9ydGVkIHRoZSBj
b3JyZWN0IHZlcnNpb24gYnV0IHRoZSBzb2Z0d2FyZSB3YXMgc3RpbGwgb24gdGhlIG9sZCB2ZXJz
aW9uLiZuYnNwOyBvb3BzLjwvZGl2Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rpdj4NCjxo
ciBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0iLTEiPg0K
PGRpdiBpZD0iZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGlicmksIHNh
bnMtc2VyaWYiIHN0eWxlPSJmb250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxiPkZyb206
PC9iPiBXYWRlIEZpZmUgJmx0O3dhZGUuZmlmZUBldHR1cy5jb20mZ3Q7PGJyPg0KPGI+U2VudDo8
L2I+IFR1ZXNkYXksIE1hcmNoIDI0LCAyMDI2IDEyOjUzIFBNPGJyPg0KPGI+VG86PC9iPiBFdWdl
bmUgR3JheXZlciAmbHQ7ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmcmZ3Q7PGJyPg0KPGI+Q2M6PC9i
PiB1c3JwLXVzZXJzICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSZndDs8YnI+DQo8Yj5T
dWJqZWN0OjwvYj4gW0VYVEVSTkFMXSBSZTogW1VTUlAtdXNlcnNdIFJlOiBJUCBsb2NrZWQgZm9y
IFg0NDAgUkZOb0MgYnVpbGQ8L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IzVFOEFCNDsgY29sb3I6I2ZmZmZmZjsgZm9u
dC1zaXplOjEwcHQhaW1wb3J0YW50OyBwYWRkaW5nOjFlbSI+DQo8c3Ryb25nPkRvIG5vdCBvcGVu
IGxpbmtzIG9yIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIuIElm
IHVuc3VyZSwgY2xpY2sgdGhlIFJlcG9ydCBQaGlzaCBidXR0b24gb3IgZm9yd2FyZCB0aGUgZW1h
aWwgdG8gT1BTRUMuDQo8L3N0cm9uZz48L3A+DQo8ZGl2IGRpcj0ibHRyIj5Vc3VhbGx5IHRoaXMg
aGFwcGVucyB3aGVuIHBlb3BsZSBtaXggVml2YWRvIGFuZCBJUCB2ZXJzaW9ucywgb3IgaWYgeW91
IGhhdmUgc3RhbGUgYnVpbGQgYXJ0aWZhY3RzIGZyb20gYSBwcmV2aW91cyBidWlsZC4gVHJ5IGNs
ZWFuaW5nIHRoZSBidWlsZCBkaXJlY3Rvcnk7IHRoaXMgb2Z0ZW4gcmVzb2x2ZXMgdGhlIGlzc3Vl
Ljxicj4NCjxicj4NClRvIGNsZWFuIGl0IHVwLCBnbyB0byB0aGUgYnVpbGQgZGlyZWN0b3J5IChj
ZCBgL2hvbWUvZWcyNjY0OC91aGQtZ2l0L2ZwZ2EvdXNycDMvdG9wL3g0MDAvYCkgYW5kIGNsZWFu
IGV2ZXJ5dGhpbmcgc28gdGhhdCBWaXZhZG8gY2FuIHJlZ2VuZXJhdGUgaXQgYnkgcnVubmluZzo8
YnI+DQo8YnI+DQombmJzcDsgJm5ic3A7IG1ha2UgY2xlYW5hbGw8YnI+DQo8YnI+DQo8ZGl2PlRv
IGJlIHN1cmUgeW91IHJlbW92ZWQgdGhlIG9mZmVuZGluZyBJUCBmaWxlcywgeW91IGNhbiBhbHNv
IHJ1bjo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PiZuYnNwOyAmbmJzcDsgcm0gLXIg
YnVpbGQtaXA8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pk1ha2Ugc3VyZSB0aGUgZGly
ZWN0b3J5IGluIHRoZSBlcnJvciBtZXNzYWdlIGlzIGRlbGV0ZWQuIEFzIGEgVml2YWRvIHZlcnNp
b24gY2hlY2ssIHlvdSBjYW4gcnVuOjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+Jm5i
c3A7ICZuYnNwOyBzb3VyY2Ugc2V0dXBlbnYuc2g8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8
ZGl2PlRoaXMgc2hvdWxkIHJ1biBzdWNjZXNzZnVsbHkgd2l0aG91dCBlcnJvciBhbmQgcmVwb3J0
IHRoYXQgaXQgZm91bmQgdGhlIGNvcnJlY3QgVml2YWRvIHZlcnNpb24gKGB2MjAyMS4xX0FSNzY3
ODBgKS4gQWZ0ZXIgdGhhdCwgdHJ5IGJ1aWxkaW5nIGFnYWluLjwvZGl2Pg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+V2FkZTwvZGl2Pg0KPC9kaXY+DQo8YnI+DQo8ZGl2IGNsYXNzPSJ4X2dtYWls
X3F1b3RlIHhfZ21haWxfcXVvdGVfY29udGFpbmVyIj4NCjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJ4
X2dtYWlsX2F0dHIiPk9uIFRodSwgTWFyIDUsIDIwMjYgYXQgMTI6NDjigK9QTSBFdWdlbmUgR3Jh
eXZlciAmbHQ7PGEgaHJlZj0ibWFpbHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnIj5ldWdlbmUu
Z3JheXZlckBhZXJvLm9yZzwvYT4mZ3Q7IHdyb3RlOjxicj4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUg
Y2xhc3M9InhfZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7IGJv
cmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6MWV4Ij4N
CjxkaXYgY2xhc3M9InhfbXNnLTc3MzcwMTQ5NTUzNjY5NjcxNDIiPg0KPGRpdiBkaXI9Imx0ciI+
DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3Nf
TVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJw
dDsgY29sb3I6cmdiKDAsMCwwKSI+DQpTb3JyeSBmb3Igc3BhbW1pbmcgdGhpcyBsaXN0IOKAlCBp
dCB3YXMgbXkgbWlzdGFrZSDigJQgdGhlIFZpdmFkbyBwYXRjaCB3YXMgYXBwbGllZCBpbmNvcnJl
Y3RseSBzdWNoIHRoYXQgaXQgcmVwb3J0ZWQgdGhlIG5ldyB2ZXJzaW9uIGJ1dCBkaWQgbm90IGFj
dHVhbGx5IHVwZGF0ZSB0aGUgc29mdHdhcmUuPC9kaXY+DQo8ZGl2IGlkPSJ4X21fNzI3MDU5Njkz
OTI3MTI3MjAxNGFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5l
LWJsb2NrOyB3aWR0aDo5OCUiPg0KPGRpdiBpZD0ieF9tXzcyNzA1OTY5MzkyNzEyNzIwMTRkaXZS
cGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgY29s
b3I9IiMwMDAwMDAiIHN0eWxlPSJmb250LXNpemU6MTFwdCI+PGI+RnJvbTo8L2I+IEV1Z2VuZSBH
cmF5dmVyPGJyPg0KPGI+U2VudDo8L2I+IFRodXJzZGF5LCBNYXJjaCA1LCAyMDI2IDk6NDUgQU08
YnI+DQo8Yj5Ubzo8L2I+IHVzcnAtdXNlcnMgJmx0OzxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPC9hPiZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gSVAgbG9ja2VkIGZvciBYNDQwIFJGTm9D
IGJ1aWxkIDwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXYgZGlyPSJsdHIi
Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9z
X01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEy
cHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KSSBhbSB0cnlpbmcgdG8gcmVidWlsZCBYNDQwIGltYWdl
IFg0XzIwMC4mbmJzcDsgTm8gY2hhbmdlcyB0byB0aGUgeWFtbCAoeWV0KS4mbmJzcDsgR2V0dGlu
ZyBhbiBlcnJvcjo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0Vt
YmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRp
diBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9u
dFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNv
bG9yOnJnYigwLDAsMCkiPg0KJm5ic3A7W2ZpbGVtZ210IDIwLTEzNjZdIFVuYWJsZSB0byByZXNl
dCB0YXJnZXQocykgZm9yIHRoZSBmb2xsb3dpbmcgZmlsZSBpcyBsb2NrZWQ6IC9ob21lL2VnMjY2
NDgvdWhkLWdpdC9mcGdhL3VzcnAzL3RvcC94NDAwL2J1aWxkLWlwL3hjenUyOGRyZmZ2ZzE1MTct
MmUvaGI0N18xdG8yL2hiNDdfMXRvMi54Y2k8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5
OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVs
dmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxi
cj4NCjwvZGl2Pg0KPHVsIHN0eWxlPSJtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7
IGxpc3Qtc3R5bGUtdHlwZTpkaXNjIj4NCjxsaSBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0
b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fu
cy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KPGRpdiByb2xlPSJw
cmVzZW50YXRpb24iPlRoZSBWaXZhZG8gdmVyc2lvbiBpcyBjb3JyZWN0LjwvZGl2Pg0KPC9saT48
bGkgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0Zv
bnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBj
b2xvcjpyZ2IoMCwwLDApIj4NCjxkaXYgcm9sZT0icHJlc2VudGF0aW9uIj5UcmllZCBpdCBmb3Ig
Ym90aCB0YWcgNC45LjAgYW5kIHRoZSBtYXN0ZXIgYnJhbmNoIOKAlCBzYW1lIGVycm9yPC9kaXY+
DQo8L2xpPjwvdWw+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRl
ZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBm
b250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5
bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2
aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpy
Z2IoMCwwLDApIj4NClN1Z2dlc3Rpb25zPzwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6
QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2
ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KPGJy
Pg0KPC9kaXY+DQo8ZGl2IGlkPSJ4X21fNzI3MDU5NjkzOTI3MTI3MjAxNHhfU2lnbmF0dXJlIj4N
CjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0VtYmVkZGVkRm9udCxBcHRvc19N
U0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0
OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1p
bHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJyaSxI
ZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0K
RXVnZW5lIEdyYXl2ZXIsIFBoLkQuPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRv
cyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGlj
YSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpQcmluY2lw
YWwgRW5naW5lZXI8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkFwdG9zLEFwdG9zX0Vt
YmVkZGVkRm9udCxBcHRvc19NU0ZvbnRTZXJ2aWNlLENhbGlicmksSGVsdmV0aWNhLHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCjMxMC0zMzYtMTI3NDwvZGl2
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX188YnI+DQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSA8YSBocmVm
PSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj4NCnVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48
YnI+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_SJ0PR09MB9126C09D08C21314C6EEAC23EC48ASJ0PR09MB9126namp_--

--===============1354480479675951445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1354480479675951445==--
