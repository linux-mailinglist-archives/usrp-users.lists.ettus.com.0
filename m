Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E09EB9CF8A1
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 22:53:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14241385A93
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 16:53:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731707613; bh=YPgInwt+nRb4/8j0gCKW1ovfeYaWsrpJuSMoMRZngKc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=n7jMjpkg3pjMhdfhwqedAMuIPxerKZXhBjPWtkZJWLG7E0TcMdOwgYCzTb00e6Rv/
	 PKwTs4r6PYVJHPrgvuMR4mkIC/Fda6DWMNJ4D/FBf2Gn5QYe0SBpnWwSISVUwgIstV
	 h13kh1davBVKzXJHohHh6WzinhHJLR9ddKHcu4p2lfHvo46aWE5yPWH22q73uk81oW
	 awRHnxmtRxuwSZnhQCPqeysgoARt0AzdPOLPEUGNMyHBF6ezRbBSLflkaw/3xYZjth
	 Ba/NUNQkZ4QBOk4tsx6O5vnzuJejamxWsdNNi7BIOt0LWRWgkHRmbI1Iu0U2dfaKj+
	 iH3mdUyTpPzHA==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id D3533385812
	for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 16:53:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="AF0LzCbz";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="fHAxKD9f";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1731707586; x=1763243586;
  h=from:to:subject:date:message-id:mime-version;
  bh=Mi8TKzMyC9ix7tm4vC9DXTQRgMI3ALX8+VeQD5Hh6LY=;
  b=AF0LzCbz66eD4oco05tHkjga3z9vUMV5WdavnyM+uDZ1Fl+pGNojom21
   lKWrbGfF1nTosCXZOG3s9mmXTp9W0VTXN/G0dMyTCh7iljps8D5yYvZk1
   14LiImZrqRD0X69QFPS5aGc05S2L9TJgU4iAPPITefm68fszSK9ItTY2N
   k=;
X-CSE-ConnectionGUID: ssRCV2bjQhexV5uXzoThXw==
X-CSE-MsgGUID: oTf9SUOWQ9KoWpXxm5197w==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="1888317"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600";
   d="scan'208,217";a="1888317"
X-IPAS-Result: =?us-ascii?q?A2FNAQAhwjdnjhwUXShagQmBU4FBgQN7gWauCIZVgSUDV?=
 =?us-ascii?q?g8BAQEBAQEBAQEHAkQEAQEDBIUAAopMJzUIDgECBAEBAQEDAgMBAQEBAQEBA?=
 =?us-ascii?q?Q4BAQEFAQEBAQEHBAECAhABAQEBAQE5BQ47hXsNhAeBJgEBAQEBAQEBAQEBA?=
 =?us-ascii?q?R0CNYEcAQE4EQEMcycEG4J5gh0NBwMxsmCBNIEBggwBAQYEBNseGGGBZAmBS?=
 =?us-ascii?q?IN7gW+CYgEqgTKEDAGFLYFVRIEVQoJohQOEE4IvgkWEHXYlTYgymgWBRyIDJ?=
 =?us-ascii?q?jMyAVUTFwsHBWCBFgODSIE2gVGDEEqFDEY/OYIRaUs3Ag0CNoIkfYJPhRqEb?=
 =?us-ascii?q?IReg3AdQAMLbT01FBsFBIE1BZ1aAQqBYoUOPYEPgQuiHoF7jF2UWzQHhB2BX?=
 =?us-ascii?q?QYMoAoXqk6Yd6h9AgQCBAUCDwiBaQNjgS4zGjCDKlIZD446g2HFang7AgcLA?=
 =?us-ascii?q?QEDCZEiAQE?=
IronPort-PHdr: A9a23:X0MidRB1DoIS6qp+ftESUyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:uFftq648CjrYzDF7xh3LqwxRtKzHchMFZxGqfqrLsTDasY5as4F+v
 jBLDWzSaauKZmPxe992Yd+08EkEv5eAzoNiHAU5+Co8Eysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC/8iEkvU2vbuOlUrObUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5wZWicxj5geEyyBMVc9Hf8ldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTiYnNid/uixSNBsi9QdcdTbLoQjukF/mGSx4fYOGfgvQo3hxYZg5m9hrf0WRa+YY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/63aJyPKrRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOTopq4x2QL7Kmo7DyEYBGCGhsaA2225ZMpvO
 0lJo3txsv1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5bvAiZzsLaYT26H/7OJtjqgPTBMcjdbPHdeHU0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1UvcuRmS/JLLdw449juKQ1K36T95VJHwMuRE9mPnxfpHKY+YSHyIs
 34Fh9WS4Ygy4XelxH3lrAIlTODB2hqVDAAwl2KDCHXIythA03uqfIQV5jZkOEdiP8AYYzbtf
 VTaqwdJvcALZSLyN/8xZJ+tAcM3y6SmDc7iSv3fcttJZN52aROD+yZtI0WX2ggBcXTAc4lhY
 P93ku71Vx727JiLKhLqHI/xNpd3nEgDKZv7H8yT8vhe+eP2iISpYbkEKkCSSesy8bmJpg7Ym
 /4GaJDTlU0OCL2iO3GHmWL2EbzsBShqbXwRg5wGHtNv3iI4STh/YxMs6e9/JNE9w/oJ/gs21
 ijkCxYGlgGXaYL7xfWiMSs5NOyHsWdXqHMwJys3Oli0k3Mke57H0UvsX8pfQFXTz8Q6laQcZ
 6BcI62oW60TIhyZoWh1Rcem9uRKKk/07T9iygL5OlDTibY8HVSRorcJv2LHqEEzM8ZAnZBn8
 +L/jVmEGcdrqsYLJJ++Vc9DBmiZ5RA18N+elWOSSjWPUC0AKLRXFhE=
IronPort-HdrOrdr: A9a23:icKoOakog59u51h6CZyz9GOGsePpDfPOimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7Sc+9qADnhOdICOgqTMGftWzd1FdAQ7sSibcKrweAJ8SczJ8V6U
 4DSdkYNDSYNzET4qjHCWKDYrUdKay8gcWVbJDlvhVQpG9RC51I3kNcMEK2A0d2TA5JCd4SD5
 yH/PdKoDKmZDA+ctm7LmNtZZmJm/T70LbdJTIWDR8u7weDyRmy7qThLhSe1hACFxtS3LYZ93
 TfmQCR3NTojxj78G6Q64bg1eUYpDLT8KoMOCW4sLlYFtyjsHfoWG0rYcz7gNl8mpDV1L9tqq
 iFn/5oBbUP15vcE1vF2yfFyk3u1i0j5GTlzkLdiXz/odbhTDZ/EMZZg5lFGyGpnnbIkesMo5
 6j5VjpxaZ/HFfFhmDw9tLIXxZlmg69pmcji/caizhaXZEFYLFcoIQD9AcNea1wax7S+cQiCq
 1jHcvc7PFZfReTaG3YpHBmxJipUm4oFhmLT0Aesoie0iRQnnp+00wErfZv6kso5dY4Ud1J9u
 7EOqNnmPVHSdIXd7t0AKMbTc6+GgX2MGLx2aKpUCXa/Y08SgzwQsTMkckIDcmRCeM18Kc=
X-Talos-CUID: =?us-ascii?q?9a23=3AwYcASmtt9ITqfP5GywBKC+xd6Is+aUf28i3aIXa?=
 =?us-ascii?q?4BHZXFaClW1is+JN7xp8=3D?=
X-Talos-MUID: 9a23:z0RF8gWXoff693nq/DjQimBZCeBX2vWND38VoYUD5pDVajMlbg==
Received: from mail-northcentralusazlp17011028.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.28])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2024 13:53:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMjsK0dGC/tpBHbNGQZGgQ9mbKxngCM1Yue8soxfM5Zluf0+kOuvzMgzW01kcXyMCtwxObYz6FVlYlJ3o13mC8g1qVg2rrWYskmnMX5ErzHpIFZTbRFFDYLP75oILIlAg5pgrcFFgox+m/vZJYJAlTJwv0Fx2duV00vvGVy6oNGdcycAyEsA0Uwi0rJ3xNMjsfb19Dj/gZrPWGxH/RKtXIGutfWJQgpvpNBLYuxPURvgftpjcsqMwChN4NppmRV4g28Up5Y39BIHNliUNJyQBgHYerXnn2y+UsyMZtvlJ63pXFhNEQSCowiTGKSYa9JJ9vfzPFI8WKRusAhn6MIFbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7soGTT20nKcOmo5IxoU3K+yvZM5emNBfnYhuvQSOqm4=;
 b=QKhZKQFaaEocLgNiZFBjdZ32Of7H/fTmBS4hSLCk8vzuP1kanAsQUFjq7mkYRROxzrm6RF4OSA/1uVQsBEfseO5iuJM6Sd6YoIGkotxJ/g7T/uAMYnph3pofFlJFEBugZlR+Zkctxphlo4/jwzIjzdwP/y4SbEByvXhGyw5Rwe91G7US0FQQaglO48yRWgbUP8DI1/98MPyPlA4R54QjEtt0hYBohpC5rFrh34k373MMg69S+QKd/wxXHW+Grv3NqCOZcIR7OW/9kVaa18G4+HHq2dIcKMLYBhAuKBftjxLNTcbgmN7MGxWdz80+Cgr2xLMEOyrohI/i16kUR2+Vlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7soGTT20nKcOmo5IxoU3K+yvZM5emNBfnYhuvQSOqm4=;
 b=fHAxKD9fXc87q7QamK6KQaeW3hFSF4tMpFLKl+k6km9LRt/yM0bC8N6AumeuEj5Bv9SU+hhSizteR0vpZxKueUES9Ba89L0ARmBknZ3XIEtcKbEjZZXVto+kkApoKxqqNZuvJuYwSTxv/ceT5kaleuCAWi3ezckEr59eIayfGTI=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by CO6PR09MB8807.namprd09.prod.outlook.com (2603:10b6:303:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.20; Fri, 15 Nov
 2024 21:52:43 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%7]) with mapi id 15.20.8158.019; Fri, 15 Nov 2024
 21:52:43 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Real-world experience with X440
Thread-Index: AQHbN6gV4wbHm/u0yEiK1lLTGdp6BA==
Date: Fri, 15 Nov 2024 21:52:43 +0000
Message-ID: 
 <SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|CO6PR09MB8807:EE_
x-ms-office365-filtering-correlation-id: 0c65431b-95cd-497d-d8b4-08dd05bfd548
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?2OYoZO5TVqXY/+IPlqIqSQgsjUcZMchYGGvp/V0OvCYf3ZPElfmhn6Nugi?=
 =?iso-8859-1?Q?zqc9WU7F27U8tW2MrX+dMl1evSLwo4wuGkfXJ2+Ntz2pL6XitCO2bKjiqH?=
 =?iso-8859-1?Q?j7NPtqeJqb9adgjZUp22q0K3IfSMCuxEuCdDZvkafxRJDgtCOyWuCk3OJJ?=
 =?iso-8859-1?Q?D58pLyNIEyJBL6T2OaiAyxy3GBidE859ojH5J5agiOxAdFkRKsqwZ5RnQ2?=
 =?iso-8859-1?Q?bENjF4Anuok7DWTFmOqDnSFjkLM8F3NqO/x1zdc/28euGS2T3TgxgSDycP?=
 =?iso-8859-1?Q?sfHeCa0f0m3XBBmOjzLgE1Qe1hMeI8/Ir0tbJkcT+7sZID3ZcErrEmiWTz?=
 =?iso-8859-1?Q?AfxWT4JtDA1G3TQyU52RoQ1EfJ3OmDC6sUAsu+c3wshDq680Cuia6E2s2L?=
 =?iso-8859-1?Q?NKyWveSA/l65mFU9kinCYJHVuChnBJIJjwVv+A1uBP0iuldypuif419xKL?=
 =?iso-8859-1?Q?OMqb8mFqcMjdj54bVh/K9CVB6BaMZVpt0MkvN1mnqGy9iJ5JFBWcgMnqOF?=
 =?iso-8859-1?Q?yqYdxw+eYYSfTZ6aWZbjf3Y3IdNv+P1T/EtjW4eQnmoKGcBteDXIytWhno?=
 =?iso-8859-1?Q?R4s/ZIcLzVyeAsj+AhDtEhTja1TJAa8/wXPl+60LDhPTarReIX1lE8423E?=
 =?iso-8859-1?Q?IHd1DwRfJOtmWI/tn3sFGJvei8Ra/bUp0+itJnwnxfxaKL4VTNcZZ/g1gd?=
 =?iso-8859-1?Q?6C/wwbyeSq4tMpnvLMwqrAjy4Ui0d+OsII3utE34NiJvP0uQyxL/3IX4gF?=
 =?iso-8859-1?Q?kiqOqrpd+N5u6lYQVREzCv/eisO2k6LvoH7lnd+hu5P8E9OSw5JLCAloOM?=
 =?iso-8859-1?Q?8oPVg+Cv2+1y25xLMM//OK1paW3sjLI80FH9pl4bHLehjPTZre8rWqx+Ma?=
 =?iso-8859-1?Q?pYSNrkx4bLyEOcHB8obqe4yzxEoVDjb4XcDPZE2T07Dfnqsyj9AqNDeLgh?=
 =?iso-8859-1?Q?9Gt0FiPFlFMs7lOOD3k5BGGOsasOPyIja9giEKKKB5GmVCsX9SFHlPkMbZ?=
 =?iso-8859-1?Q?aWo0dRHUQo9lw0pUlNgO0FfQv/HkPIR9PJLMpQZTcWejnesVse8ghHyfuq?=
 =?iso-8859-1?Q?Zjva8FcoAkQVP3A2M+7jtS81mCn1k6d0e/cb7FakjDjtbtniSVg4BcqQtx?=
 =?iso-8859-1?Q?sdPCb//MtpmBRJM5kxajcHI2+AnjYtMRfWVZJPbEb4QoK/I0Ycv33c2P+T?=
 =?iso-8859-1?Q?EJ/kqSpep7PNjltqt8vVMBhc/jH3LD+gU3A8Qo1GdvPjJrjGwdnZNmA3vx?=
 =?iso-8859-1?Q?YMHvRWdEPueZl08b0e/CmS0HILpcRtigQZTz/R4pKgUfHICo191zYcIgbv?=
 =?iso-8859-1?Q?HTyBPmKfUhTGGI/lxtGrLORo3qdyPzVi+9nhrXjbOLYDg0pW4Yq9gsUR3N?=
 =?iso-8859-1?Q?76RJr/tGmHHSoxBvX7Uf7oKr2lelS/uyt6BqjNa3ND0/OdNNNc89U=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?BzC6H+eNf2qDcD7QkV+pkr79vaESYQR+7cR0VpjrkevIexaFLXS6isleF7?=
 =?iso-8859-1?Q?JiT7QxaNU4veGvQQ8jegNCwMFruwcwdJ3s4jWkQCPYOMcVBWoDPGB6fVUa?=
 =?iso-8859-1?Q?oNkK7HdJtTiv3KkFWCA1RDijV6HWWI9Pf3IH1QzPmx181NKUXYoq00n4SE?=
 =?iso-8859-1?Q?ZxfPzg8PehpIxKX2B437XtNVfWHDb/euI9LuSAZTTUqnyVZblts7i8GByL?=
 =?iso-8859-1?Q?K0sCeqMu+U+buBj5t7R3fEGGr3Q0zcHMpoNHEbO82alOHxxhTmC3g18Ey+?=
 =?iso-8859-1?Q?6JHdJgNpeZapOeoXF/FERx5sfil/4+7KR5ubpgEffgBmeH/jV2a9eMZhqx?=
 =?iso-8859-1?Q?DsFz8en62N7f62o1LN5tQomTZWuREGW6JGx0syP7eEti2K3xMEUC3g5fak?=
 =?iso-8859-1?Q?kc8LSrPki1wZe95SYfMUyJiOkSwfYe7KzMS7JMec0aqwxzB6lSVzJmysMp?=
 =?iso-8859-1?Q?E4BQRZdntJ1g64397+VrUxZ2xupC0LZqoc8z4PlsS4jtwFwdQ3CmICq9h4?=
 =?iso-8859-1?Q?4o7e47F6rRPDAjy4kGbbsVnjqyMy4wqWlUsnue/Xlr9+0FSMwFxRITAJMt?=
 =?iso-8859-1?Q?4VQfsO+GrwRButmH6ZoR75C743BObiSjA7mNYH7Zh93gYuLSkvLkkZJjI+?=
 =?iso-8859-1?Q?UEoY7EEfvp9gmuaM0lHuQMWvuKbT/UpcRXBLz+wRwhtD2N/CUGEi4VPtfD?=
 =?iso-8859-1?Q?Gym2d8gx+xQ8SkxPb4zR/l2D3Upadms8/XSlNGQl7poQwffCFMXbLSpsef?=
 =?iso-8859-1?Q?A326+QqTzxYjUaOKTHv9mbnW5UUVNkEqdfUJbwEjOYED/y6a+/pMw+0CJf?=
 =?iso-8859-1?Q?TCFm7/Mjl/WoWC1eI9clxmPoNjUwpyX6O+FiAZaJEfl6FBjtRGi1VOGZdy?=
 =?iso-8859-1?Q?Y1YG1/8ibP4tS5q7ex7cXPn4TJKGiOAUJBzt2a8W6dehDcGeGHAgBCAc87?=
 =?iso-8859-1?Q?ztozBmoQLrvq6rKc4kiq7DtOvukA2rEu1KhB6K6yjCE6LYtaRFAs/hXMAq?=
 =?iso-8859-1?Q?oTWSs6h4m36kPUQQwAJl3+4OX+yLFPjBviPzoh/znGWntv4Am0uNYC/dqu?=
 =?iso-8859-1?Q?XEGN/VITI8SC1jDmaoeQ09Mx+MvNrQuDKRi4jJvYFvlJW+r41Pdpe6bfoI?=
 =?iso-8859-1?Q?1tt4S0oJdBI4ZO9wSZ42f01n6LGsome06RPqfdqv5pKOG6FJkEFexAMKK9?=
 =?iso-8859-1?Q?HT1wWs4I+RE4duAZqhlrSosah3YWM01aXzkhLyct0568WCsl8muAvARsWD?=
 =?iso-8859-1?Q?ZdQpYLFIFDPHEnM1WCoi9WxWE0DFDAxRPh/dlTCzR4UxQsGpfImXWuQ6UC?=
 =?iso-8859-1?Q?2tP7idn68NFutZZWCX+H56A7HB8UnTV5Qtk/+pbnWWew0o9s4PNl4J9FkZ?=
 =?iso-8859-1?Q?eJjVKI8hRQTrbP2FfwKXI9fZc0FvCjeO6b7uJBCgCsYPVBITxX1Ok5gEs9?=
 =?iso-8859-1?Q?UGbKGaG/SriaQ2wb+pvGWl3le6uP1yM1GUkpU/QONiC/ukKQKjT9lNIbVy?=
 =?iso-8859-1?Q?WahAq3rlouv7l7X5zfBHIKDZzvMOOUrLSCVTH0curAQyFqfcZzRiz0d7YO?=
 =?iso-8859-1?Q?jWu9xBP6LgV+NVCH/2RtL/16u/29IjQW6N3pYl9vWkrRGQ0ogz086pFe1S?=
 =?iso-8859-1?Q?eY70xRcwUK0jQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c65431b-95cd-497d-d8b4-08dd05bfd548
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2024 21:52:43.1456
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR09MB8807
Message-ID-Hash: TYYKHKTLJCYLXY2KXKNDT34KUUAZFFI3
X-Message-ID-Hash: TYYKHKTLJCYLXY2KXKNDT34KUUAZFFI3
X-MailFrom: prvs=0429d4aaf=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Real-world experience with X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SDKKE7ATD763ZXQVVYVCZKMXG3JFHUBA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7840735434726187648=="

--===============7840735434726187648==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am considering the X440 for a wideband record/playback system.  What benc=
hmarks has Ettus done?

Is there any hardware out there that can continuously stream (one way, TX o=
r RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the combined bandwidth of 2x 1.6=
 GHz?  Assuming DPDK is used, there is still an issue with getting packets =
to/from different cores/threads.  Are the packet streams configurable to al=
low hardware-level queues that map to different IRQs/cores?  How does the T=
X side work (that's usually a lot harder to maintain than RX)?

Thanks.

--_000_SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242SJ0PR09MB9126namp_
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
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am considering the X440 for a wideband record/playback system.&nbsp; What=
 benchmarks has Ettus done?&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Is there any hardware out there that can continuously stream (one way, TX o=
r RX) the full 8 Gsps (i.e. 2x 4 Gsps) for the combined bandwidth of 2x 1.6=
 GHz?&nbsp; Assuming DPDK is used, there is still an issue with getting pac=
kets to/from different cores/threads.&nbsp;
 Are the packet streams configurable to allow hardware-level queues that ma=
p to different IRQs/cores?&nbsp; How does the TX side work (that's usually =
a lot harder to maintain than RX)?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks.</div>
</body>
</html>

--_000_SJ0PR09MB9126E90ADAB8AD69F37EC15BEC242SJ0PR09MB9126namp_--

--===============7840735434726187648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7840735434726187648==--
