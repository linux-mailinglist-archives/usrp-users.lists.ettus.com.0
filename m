Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 240D7A30303
	for <lists+usrp-users@lfdr.de>; Tue, 11 Feb 2025 06:45:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F168E386148
	for <lists+usrp-users@lfdr.de>; Tue, 11 Feb 2025 00:45:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739252707; bh=EgTZsC5cO/4CVu72L+bD4cEzauXELe+fa0uFVwlZqiQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MU3XplA+z9nrqkDlNQATNm873+XvnqHMG2dd3gphLtlz8PfC/I6DdfVFM3b1hqYFg
	 lTgHhsg+IiysyXH8jMZFqLnrgxm8f3VsL7+KtC3DdKkMNAhcKr9NjG1ERuJ8zgg4pw
	 ClWSWyQAa7AAG1dFLi/TIJQ2PCqttG8/n8mPih8dHWLHwgjBOECaEEpOz//EMo8Q8L
	 f6SLofk7TIEFatkvZXREjhIwxsYRD67RHuu0DwTsVoVsfsQpWpXCc95YlIhoKT33YR
	 alkSm5uzZs+ZY5TYMjWngRVIasoZvgpNcXjQ7PNV3IhhyF8dPgtqvGg0G1UuqtaDMF
	 knpLjXs3nZHBg==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id E86CE3860FC
	for <usrp-users@lists.ettus.com>; Tue, 11 Feb 2025 00:44:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="elOqi1LG";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="qezu/rTo";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1739252672; x=1770788672;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=eXdugD/EIgUWxbKDzZPXKgEt7N8yf4Q93DQM2tAqVUc=;
  b=elOqi1LGlNfzYQD9lov2+vxpcyNYRCO9UgkPm1cB2X3rztw2vdhkqIMB
   T42y9LQIHLWhV6VYatKp+28ansV9S8Rk89pt+6r55Kh4JYjtC8f+sf3C5
   S65r2LTaq3KuYgvbPXdG2Bl/2xx3cxmJmf6fm6lxvSIeUl28jikSY82e2
   8=;
X-CSE-ConnectionGUID: rQZyJzi6Ssmd/8kgH/8SdA==
X-CSE-MsgGUID: /E92v2VyQhSSMnuVHM90lw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="6503281"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000";
   d="scan'208,217";a="6503281"
X-IPAS-Result: =?us-ascii?q?A2EXAQDv4qpnjh0UXShOCQOBCYFTgUEBgQJ9gWSWSZc/h?=
 =?us-ascii?q?lWBJQMYMwsPAQEBAQEBAQEBBwIuAQITBAEBAwSFAAKLByc0CQ4BAgQBAQEBA?=
 =?us-ascii?q?wIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4V7DYQHUQ1IA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBEQINKDYBHgEBAQEDARwjAQE4DwIBC?=
 =?us-ascii?q?BEEAQEvJwodCAIEEwiCdgQBghwNBwMxsCh4gTSBAYIMAQEGBATbHxhhgWUDB?=
 =?us-ascii?q?oFIgliBIgKBcIJjASqBMokGNoFVRIFXgmg+hAEBQx8MGoNOgi+CM0t1L4M/h?=
 =?us-ascii?q?kudSFJ1IgMmMywBVRMXCwcFYUhIA4ERI4EjBTRBOQGCDWlJOgINAjWCHnyCK?=
 =?us-ascii?q?4IggjmEQ4RLhVqCEoFjAwMWEgGDIXgchGgdQAMLbT03FBsFBIE1BZ0WChBbA?=
 =?us-ascii?q?TyEcyQ/gkqTE49Dozc0B4QegV0GDIopjTiILBeqUph8hRyHfmqVZ4UZAgQCB?=
 =?us-ascii?q?AUCDwiBZ0oegS4zGjCDKh8zGQ+OOoNhhD3BP3g8AgcLAQEDCZIlAQE?=
IronPort-PHdr: A9a23:C3sxXh1npA+xOdyOsmDPrFBlVkEcU/3cMg0U788hjLRDOuSm8o/5N
 UPSrfNqkBfSXIrd5v4F7oies63pVWEap5rUtncEfc9AUhYfgpAQmAotSMeOFUz8KqvsaCo3V
 MRPXVNo5Te1K09QTc/zfVqUpWe9vlYv
IronPort-Data: A9a23:QvNS2K4fJfeHtm4aIlFMYQxRtKzHchMFZxGqfqrLsTDasY5as4F+v
 jYZDTiOP/iNNDf8Lop2PYXg9U9U75OEnNdqGQc+rC1nEysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC/8iEkvU2vbuOlU7KdUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5wdWicxj5geEyiFPVctHfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTiZvtCn4qC6FNJ3g8hkfMrkHMRPgX1JmGSx4fYOGfgvQo3hxYZg5m9hrf0WRa+YY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/63aJyPK7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOPlrqUw0AT7Kmo7TzBHD0Xhn+iAinWFftRCF
 Wwxq3Iqsv1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5bvAiZzsLaYT26H/7OJtjqgPTBMcjdbPHdeHE0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1Ur+sSOOtJmXdRUw6kKHXW2FqVNCaKfwMuRE9mPnxfpHKY+YSHyIs
 34Fh9WS4Ygy4XelxHzlrAIlTOHB2hqVDAAwl2KDCHXIythA03uqfIQV5jZkOEdiP8AYYzbtf
 VTaqwdJvcALZSLyN/4xZJ+tAcM3y6SmDc7iSv3fcttJZN52aROD+yZtI0WX2ggBcXTAc4lhY
 v93ku71Vx727JiLKhLqH4/xNpd3nUgDKZv7H8yT8vhe+eP2iISpYbkEKkCSSesy8bmJpg7Ym
 /4GaJDbkUwFC7SjOHSPmWL2EbzsBShqbXwRg5wGHtNv3iI4Rz94YxMs6e9/JNE9w/oJ/gs21
 ijkBRYEmAuXaYL7xfWiMSs5NOyHsWdXqHMwJys3Oli0k3Mke57H0UvsX8pfQFXTz8Q6laQcZ
 6BcI62oW60TIhyZoWh1Rcem9uRKKk/07T9iygL5OlDTibY8HVSRorcJv2LHqEEzM8ZAnZBj/
 eP4jlqCGsBrqsYLJJ++Vc9DBmiZ5RA18N+elWORSjWPUC0AKLRXFhE=
IronPort-HdrOrdr: A9a23:iZ/L2aqRu40IPtBHafunDUoaV5ugL9V00zEX/kB9WHVpm5Oj+v
 xGzc5w6farsl0ssSkb6Ki90dq7MAjhHP9OkMEs1NKZMDUO11HYSL2KgbGC/9SkIVyGygc/79
 YqT0EdMqyWMbESt6+Tj2eF+pQbsb+6GcuT9ITjJgJWPGRXgtZbnmVE42igcnFedU1jP94UBZ
 Cc7s1Iq36LYnIMdPm2AXEDQqzqu8DLvIiOW29KOzcXrC21yR+44r/zFBaVmj0EVSlU/Lsk+W
 /Z1yTk+6SYte2hwBO07R6e030Woqqv9jJwPr3MtiEnEESttu+cXvUuZ1TNhkF3nAjl0idRrD
 CFmWZcAy000QKaQoj9m2qT5yDwlDkp8HPs0lmenD/qptH4XiszD45biZteaQax0TtWgDhQ6t
 M/44uijesiMTrQ2CDmo9TYXRBjkUS55XIkjO4IlnRaFY8TcqVYo4AT9F5cVM5oJlOy1Kk3VO
 11SM3M7vdfdl2XK3jfo2l02dSpGnA+BA2PTEQOstGclzJWgHd6xU0Fw9F3pAZ3yLstD51fo+
 jUOKVhk79DCscQcKJmHe8EBdC6D2TcKCi8Ql564W6XZ53vF0i926Ifuo9Fmt2CadgN1t8olJ
 zKTVNfsnRaQTOTNSSn5uw7zizw
X-Talos-CUID: 9a23:XkGmimDWwtHyDk76EzNexl82CMF7SWbYwDCAIECYTjZSRJTAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3AiKmaSgy667Zo3sZFnnXVPIrV4guaqOODWRoTy6s?=
 =?us-ascii?q?Xgsm/Dgl2Jgm9qWXvRpByfw=3D=3D?=
Received: from mail-northcentralusazlp17011029.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.29])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2025 21:44:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LYB0nyNKq8H856WMGfHU7QmpdZKShgSQe6+Bac+d9LbtfSd2MZIiUj5wNwbQGiNemmxhH0XA8tgd0YAd3dwkkvEje2xKNdoKPcRN+ddHiopZ9BDoecNNTiBqMpP9R4IY9Gk9nat8baBaZ7DT5ZcB9eUrDg/rG7QoMG18X3n2LnN/Asn/mY7FQOp/gqXwo29KucmzST9Qed7l/08tvOjgqdIA+uIzzCDHMRtD1bh0aOGshxva+eQG9FtJdi98gsWqZjPbkAo+c9DvTyLhc+Nf7XCpNZI8f8hS/Q5hLcz0wD5HvDYGMh7yEBqTpBV9iMcMV+YCZNGeshltQ22pxjVqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T0DuY6SG0Sej1E79TevRzrxZdnjchE//ghwWVELud5E=;
 b=hz2i6iEc7Y5fkT6b3TxrAJCeCi+Mp4V6SsM3y3RglqHV7PRy6Taqn03fz0aHzwMgjvzlxga0sD4W+Loy4QFIOCOksKCKv6FxD/i6DrVxU0vEaakMYqqeyAysWSVTL2D56ZVbPluYKESlzg9v3sQ6H6ihMGs7INE+qtIaG3XLkutPfFuAvCc3pzLRftvnsH1p4RLnBbUB0DP/BuufEP/USZteGIYFGLfb7axrZtTX5pILJnpb4iylrhdul/VSdZePO+mKLQ2HRp4iVqUxopkRe3k5VeKXfzpjk6keAx1pm90f1NYTdt0QYKhkTI85mw7EByASwQsvGgUId8kVmm9RSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0DuY6SG0Sej1E79TevRzrxZdnjchE//ghwWVELud5E=;
 b=qezu/rTorq7+zwFqayKo8Yf0Boqyx+N34cigFu+M2G6O6nEehRAYD+HwOpiyopzTpYaySxzWLl80nHUxuHSnKVZm3kl9ydNYkfijomU2niEBYPySIQDfng7H4RU19tvh6JhPCN9KN9IGP3jJdTAEFfXHwXVVQ5UvOFLvnbJXZVE=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS0PR09MB11116.namprd09.prod.outlook.com (2603:10b6:8:177::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 05:44:25 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 05:44:25 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: LO offset with external LO
Thread-Index: AQHbearm1U8tBY11yk+iq5Z60oAqBLNBmwri
Date: Tue, 11 Feb 2025 05:44:25 +0000
Message-ID: 
 <SJ0PR09MB91262C61487916430516EA7AECFD2@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB912673D9052B0D2ECE79DBF9ECF12@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS0PR09MB11116:EE_
x-ms-office365-filtering-correlation-id: 55439f50-b9f2-49d0-6d44-08dd4a5f248f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?7/0C9ScehPXQJKeWGVnUqFyZuc9NhxPtxb1a7ktn3b3qz/JoVbDwEMbA?=
 =?Windows-1252?Q?5vu5j1SV32MBVZByM3kQPfTuwi9TKsu9av/Ter7nG9P30HO7V68wL1s3?=
 =?Windows-1252?Q?zCaqetjC6g03qxa2d50wJhSpZz0b2v8PqwPSMBFbt/90LKrXFhB/QYDs?=
 =?Windows-1252?Q?rYV6YDq+RmECkaN7zMHcCWlFfOtNu6kXAs9ApczNyhdqA7AOvYOmRgHx?=
 =?Windows-1252?Q?YvIMsLRo3eGcp7FOYZzsnpeAoCFDxVJOmLY2kqIRCCkYm6wAH8xzYqhm?=
 =?Windows-1252?Q?InyY4NRzCAODV9mpTQX6HL8Ar2zP5baqAva1nlPkwHAaLahzFIWuFpY8?=
 =?Windows-1252?Q?xuWhn3yBYyLewg6pG/ty4I7mJn4ZRbshlxqsqw/fdnA0AoOXOOV9EkIb?=
 =?Windows-1252?Q?vcYCCOZToKtw8bp66D4D6QyJO+1ucTy2k3RjB6zm5E5swCdEYBsZ3ycI?=
 =?Windows-1252?Q?4bsSo923urh30OLwyNA5EFu1g/WC7P+Ttl2DUNS1wg5UVt2d+oKcHEc/?=
 =?Windows-1252?Q?oMuhXNzAOB+P08NRCIjRb2QWPvtsCkcQ+WYFs0AeYm81Arrf/phXCtOu?=
 =?Windows-1252?Q?gSxdyRTl+gVFhFdFMk6ikvgwnMz6QbUWbLIlHnuosXRn9iVMizvFn1++?=
 =?Windows-1252?Q?hnV9i4sfdzipdwsQSCsFqP2a0PuCVXcLIEqR10tH9YRw6Lu/JwAn5WQJ?=
 =?Windows-1252?Q?+VVDhWyQa1hujsZ4E3apdFsnz4p3x7t6+L2H8ddJBkF8Yq34urtPEIlS?=
 =?Windows-1252?Q?IbG0EeybzDyrJms7VYd3XebPCvw1z3Ju6N1UHKE2zO8gPQXjR98Gx6eE?=
 =?Windows-1252?Q?dzi8njfAe0CamjuURu16YAKxjqHVx5bSxczQoxxHVwS35E2sA/C7je/l?=
 =?Windows-1252?Q?ANoHT6eiI5V1z6fHdL5jJCn79e18OE9dzwXebhIMsRG4f4/Y8sNkPLC1?=
 =?Windows-1252?Q?xMoeTzLm+AZYNJzYDHvY55N8ExphooPEEGkY7LVScV/g2MDucgMPH9cx?=
 =?Windows-1252?Q?VnaEaROFC1zC9qz73g93TXmaSy2nsLq6BctpI2piNDkjOyqfbgbBgXol?=
 =?Windows-1252?Q?7q4UpuIOCk4EakynadxlY8kuAYSun5JzFIAw41iQk//a10o9AO34c1Vb?=
 =?Windows-1252?Q?aZktu3tqTB3XKBWe0AGuBfTrYhN7B/PX8i/QPvHLE5+NX94LmQb7P8kB?=
 =?Windows-1252?Q?4uuYCrptuJ2DgGD3vhDzq1CZhFJEfqcXPPih6Hk/WWkWLiZqmee1og56?=
 =?Windows-1252?Q?BYKEEjywgN4gfhUnlWEARUOZvlmBRwLQatYkkng8pbAMUH7BY1WIIBlq?=
 =?Windows-1252?Q?IkY9MOF+7boZRIypi6WC9JB3biJ7STANFfPTSmgcRaiYExX9JUnPQ1Mx?=
 =?Windows-1252?Q?txJmHBLygdCE9c2wvPj9EANTHLtHoPNcJ/iBbMDTM4iThNQq+FA07Nx3?=
 =?Windows-1252?Q?kQK+IiL0kMETvS003D59QzwajVeFa+1Cwofrv4guh2vVefAmxmius1LL?=
 =?Windows-1252?Q?N/vXVuHosBKVomLOQPhbm4V5kue9gYgTvQcuvtu1wG8UruQ8i2b/1dHT?=
 =?Windows-1252?Q?RkovCCWUz40f+806?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?N3yiFl+p5o98dzhKahmvBFpgSw1X8RGo1K1V8mL8vGS7//qAR8S0fl9O?=
 =?Windows-1252?Q?FYDEwdB31QnonnRlgTmivM+iErIn2s8zMa94HnrSpu42p0h8lOhhONom?=
 =?Windows-1252?Q?QKFbycKE7bk8qmyqY6fr+Ft/jk1i3OSCs+bNBpEKND2/RZvecMRTb6Fy?=
 =?Windows-1252?Q?C+LV3h52bVaw/hlfV3Jv1aP+ZZ6X5hoR6/s1tLiZ7vYQLcYpZDMsQ8gR?=
 =?Windows-1252?Q?OVyru4DPE3RTzyDt4K3OPs6Hvzi8rbg7COO+fi8DEKUyjgJm1pgPR0SQ?=
 =?Windows-1252?Q?mxx2cw20PtQ2YO4iSFdeqKmkD60WgM9jNShehYEwR2595KHLWi3Sze2M?=
 =?Windows-1252?Q?ZID2eLGkbmr8gn7qKYVotAsBJ9cdhoj+No7G6FWSOGUCHA7RzmMncBc0?=
 =?Windows-1252?Q?7reQS0rbS6YuFyjZr3n5zjaglyCdStrnssQZWye6aSKCiBarvO1vCWQz?=
 =?Windows-1252?Q?992fFYvaRld17HKzzUb3jcZ4Jy4abCC4uUQUXkDioS/1z//xxTcfpH7Q?=
 =?Windows-1252?Q?f/AKzWnsPAT11YqmytJ9Gy2ZYqmkry0czt5YIN7Kt8M75/dlcNnoIAVD?=
 =?Windows-1252?Q?tqU4SoTrnEKaFrXOBy7smYjsqZk/5sbingUiYuybZ5pg4JaxGUG8K0GZ?=
 =?Windows-1252?Q?IPRW/toZU7BZ4qPCwicMxt1FIq1WkEgZWuJkFZBiRVSTe5s4dNngrRKj?=
 =?Windows-1252?Q?eW/ikoHJCKDR5Nr7/9Mlm+vmAIJr+Tn/uIDKnl44YnqB/yD5LVLuvRRJ?=
 =?Windows-1252?Q?5FOufpuaXUa+mi3DgjZ1dlHZaEB0ARF46M9nTmpV3LZeb7rXLMt6mv+s?=
 =?Windows-1252?Q?nsJ5VSpyz6Qca9fGPojnXoRr/gvONe24B6NEp58IZZmW+10EsVIscah1?=
 =?Windows-1252?Q?9esLdqexAxMVBbEunGwoozI+eXIfxeT5eTXc9Z1dzy22YeqbGsBt9paa?=
 =?Windows-1252?Q?YUpUPuI9NKxew41HXMipIZvrqru/DV6ViRwAU8SrosRZCU9x40TdjkxK?=
 =?Windows-1252?Q?K4kXZC6IyD0I00TCWd+wWv13JrFslXVji1ebEgFrzu2g4PqVJxxQwTtu?=
 =?Windows-1252?Q?nLl6vPlZwHy6Xb3+tq/kzmkrrDaZmRWh8fSe4/sSHzGmRTIGEp0xSoqU?=
 =?Windows-1252?Q?ati3NwA4H0gkESkOYZV0hW6RjUEMMZWgPkQRPbfh3LkwSqE84qWEmglu?=
 =?Windows-1252?Q?rC1TlxeXEyn2WKvkEZyQhVwwgRpbvGmuIDUR34LAZjrb8+crpl9Ru1zM?=
 =?Windows-1252?Q?2UQEccVkSbaAdMfZ0oPNZuHhdsz6IQCajUXiK870rFP7n5S7mPonImxt?=
 =?Windows-1252?Q?aXbZ4LnU6JxgG+IExmrnuXSyoRvb/+bdynCjwA4q3ml30kGV+BYXFUtZ?=
 =?Windows-1252?Q?LSoNwQtOJJJlZD1s3zWRwz7EDofnuxE1SCB+FpPvcMdxens4Tgi9yr1H?=
 =?Windows-1252?Q?Q/4/5Q3V3QY9hXS9GDBGbx/gGOb+ry9HyNjYd9cTDHZWlSEZVjYcvth3?=
 =?Windows-1252?Q?NxtIp3/ROH50kOkj/oXhk43SEehamToPJdbBVKgvOga/SeHCvcYpV38p?=
 =?Windows-1252?Q?/cSce8kVaI1w4z8HYtPtlQsVW+QRZzX73EvtHNXB2E7+BJJLwQ/QwUhv?=
 =?Windows-1252?Q?VLf7hF2ywqz3NDpsDWKVkTKG7qUnwWNURLdTrNOwmClfB18u5S3TbKKa?=
 =?Windows-1252?Q?HuAyfHA1VwNY0cX/lftYorkSHDfG8tsQ?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55439f50-b9f2-49d0-6d44-08dd4a5f248f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 05:44:25.2045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB11116
Message-ID-Hash: CXBCFZBEHBTF6JDAQ5DFD3UIL66EJ2I5
X-Message-ID-Hash: CXBCFZBEHBTF6JDAQ5DFD3UIL66EJ2I5
X-MailFrom: prvs=130d5b6a6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO offset with external LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOUQMH6FS2X42LRXHAVLJDJA36FSNFIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4282175819112246436=="

--===============4282175819112246436==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91262C61487916430516EA7AECFD2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91262C61487916430516EA7AECFD2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi
This was my mistake.  Turns out the offset is handled correctly. However, I=
 think there is a bug for the N310 for setting up external LO. It works if =
you specify the external LO in device arguments. However, if you set it usi=
ng a function call at run time the function call is apparently simply ignor=
ed And the internal source is used.
This bug reveals another bug which is related to using internal for the fir=
st two channels, and external for the last two channels. If the external LO=
 signal is not applied to either of the RF channel pairs, UHD fails with a =
low level error that apparently comes from the embedded arm, micro controll=
er inside the analog devices chip.
I don=92t envy ettus having to test all these quarter cases
Eugene


Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Eugene Grayver
Sent: Friday, February 7, 2025 1:55:38 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: LO offset with external LO

Hi,

I am using N310 with external LO.  I still want to use the digital LO offse=
t.  However, it appears that when the LO is set to external the digital LO =
offset is ignored.  Am I missing something or is this the intended behavior=
?  UHD 4.6

Eugene


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB91262C61487916430516EA7AECFD2SJ0PR09MB9126namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi</div>
<div dir=3D"ltr">This was my mistake. &nbsp;Turns out the offset is handled=
 correctly. However, I think there is a bug for the N310 for setting up ext=
ernal LO. It works if you specify the external LO in device arguments. Howe=
ver, if you set it using a function call
 at run time the function call is apparently simply ignored And the interna=
l source is used.&nbsp;</div>
<div dir=3D"ltr">This bug reveals another bug which is related to using int=
ernal for the first two channels, and external for the last two channels. I=
f the external LO signal is not applied to either of the RF channel pairs, =
UHD fails with a low level error that
 apparently comes from the embedded arm, micro controller inside the analog=
 devices chip.&nbsp;</div>
<div dir=3D"ltr">I don=92t envy ettus having to test all these quarter case=
s</div>
<div dir=3D"ltr">Eugene</div>
<div dir=3D"ltr"><br>
</div>
</div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver<br>
<b>Sent:</b> Friday, February 7, 2025 1:55:38 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> LO offset with external LO</font>
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
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
I am using N310 with external LO.&nbsp; I still want to use the digital LO =
offset.&nbsp; However, it appears that when the LO is set to external the d=
igital LO offset is ignored.&nbsp; Am I missing something or is this the in=
tended behavior?&nbsp; UHD 4.6</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Eugene</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div id=3D"x_Signature" class=3D"x_elementToProof">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91262C61487916430516EA7AECFD2SJ0PR09MB9126namp_--

--===============4282175819112246436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4282175819112246436==--
