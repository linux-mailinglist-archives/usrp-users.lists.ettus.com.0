Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E07BCB301AD
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 20:03:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A892386813
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 14:03:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755799438; bh=K7s5M97LVJBc9OSVuNd0IcN3AerXoYXba6QWPfcfivQ=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dC2AnIod6SLFWSZ2S5XVm6AmfEQgcWKg1XRs4I9c05nVNSA9sWeIIG2vutW2lHUyQ
	 s33RKycQPRgAaJiEgiRyHsErlxqNKTiLGva8EccUFvhSk2Yo9OKFEFGRcfRZGkouX8
	 TIj7/XOSEg5DfvgMdg26NsHacRepNmXr0dOqOl2qR2x1z5G/K2VKStkdwEFCseVyEK
	 PboiYEbTqVvdGVv8mAcEkBY8h29F2GEtoVFcie+qZmtA9XTZnCxmuImlvrDfi+/1o2
	 8BaNeEaUN6O6bhowJBZUszBlwepAuBmr9FOw7oIfS/VJynl/QuVL+ZcWdHjtqq+u59
	 LeBHSAAu5zWHQ==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 5ACD938534D
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 14:03:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="w88LVAbb";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="g3LkFnqt";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1755799402; x=1787335402;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=81nyNPZZ48QMk/qGxlN1QyKg/yvpfgDXg7LZF1jkO3g=;
  b=w88LVAbb8sVhdP77GcOFOm4OJ6s0mXD+ljyWaNosqen7sBQapVr/V39B
   3HvkxQkaShzsvFiK4CBQ02QBDJwuFe+HYHU7sd/+O4idEXwomgioMdnnP
   SylZ8coTlJlaVBxSOZJ67hWlV2lVnn4NmVTZaZxBM58pOPa7Vq1syrbdp
   M=;
X-CSE-ConnectionGUID: IQyS4HDfQ76tNUZwQIC1Jg==
X-CSE-MsgGUID: oGSEUmbxQ3K6lXVwusUKTw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="2335277"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400";
   d="scan'208,217";a="2335277"
X-IPAS-Result: =?us-ascii?q?A2HmAQAdXqdojhIOXShXAx0BATwBBQUBAgEJARWBUwKBO?=
 =?us-ascii?q?4EDQAE+gWeuDHmFXoElA1cPAQEBAQEBAQEBBwIUEyoEAQEDBIUAAowmJzQJD?=
 =?us-ascii?q?gECBAEBAQEDAgMBAQEBAQEBAQ4BAQEFAQEBAQEHBAECAhABAQEBAQE5BQ47h?=
 =?us-ascii?q?k8NhAeBJgEBAQEBAQEBAQEBAR0CNYEcAQE3AREBfycEDg2CeoIeBwQLBwM1t?=
 =?us-ascii?q?iOBNIEBggwBAQYEBNshGGOBZAmBSQGDe4FwgmQBKoE0hA4bhRKBVUSBFUKDJ?=
 =?us-ascii?q?oRFHyaDToIvgiZEPhQdkA8HBCAIgkEEhy2BRCIDJjMsAVUTFwsHBVuBCAOBD?=
 =?us-ascii?q?24yHYEnhRaEJytPhQ6BGYNTEhJrDwaBFYNlBoIPQAMLbT03FBsFBIE1BZJxB?=
 =?us-ascii?q?xBCgi+BCm0JEpZCjxqBfKFGNAeEHwWBWQYMoB0XqmuZBqQhhHUCBAIEBQIQC?=
 =?us-ascii?q?IFoaIEuMxowgypSGQ+OLQ0Jg163RXg8AgcLAQEDCZNpAQE?=
IronPort-PHdr: A9a23:qWmqGxSm5u7gdJsYM6W01m8xHdpso7jLVj580XJvo75Nc6H2+ZPkM
 QSf4Ph2l1bGUM3d7O4MkOvZta3sGAliqZaMuXwPatpAAhkCj8hFkwkpGsXQD0r9IbbjZDA7G
 8IXUlhj8jm7PEFZFdy4aUfVpyi74CQVXBLlOlkdGw==
IronPort-Data: A9a23:33yU7KkBBfdmOo2GniRdFGbo5gwUJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xJNDGDQPvyIN2fxcopxOtnj8E8A7ZXSm4BnGwdtrX82Fy4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8ykkjclkYZKlUbOea0idfSc9FWF5z0slw7Vh6mJRqYDRKxuXv
 t/vqNHoNlag2jplWkoZ8KvrRClH5JwegxtG+AVhDRx3lAWGzSRNXMhGffjZw0bQG+G4IMbrH
 44v85nkpgs1zz91Yvu5n7DydFE9Q7K6FWBiXVILM0QKqkEqSh0ais7XBtJFAatko2zhc+RK9
 Tl4ncfYpTEBY/SWwLxFO/VvO3oW0aVuoNcrKJUk2CCZ5xWun3DEm52CAKyqVGGxFyke7Wxmr
 JQlxD4xgh+rptun++6bZudV2Zo/CvTZI7o+kShCwmSMZRomacirr6Ti3vYJ5A1o1+tzRa6EI
 c0EdTBocRLMJQVVPUsaA44/m+HugWTjdzpfqxSeoq9fD2r7kFQ3geOraYaTI4ziqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXiraU32gLMroAVIBo5bnaGpPOpsxWdBdZvF
 VMJ4RcNkbdnoSRHSfGmBEfk/xZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesHjtyrL2eRHSB7L6QsCi7KywNdDBaPHdcFFtD5MT/qoYuiB6JVsxkDKO+ktzyH3f33
 iyOqy89wb4UiKbnyplX43jmuiOX+rjlQDdquBnxY1C61yJSPayqMtnABUfg0d5MK4OQT1+kt
 XcCmtSD4O1mMX1rvHzdKAnqNOH2j8tpIAHhbUhT847NHglBFlamdIFUpSp5OVtpOcsCZSXgZ
 FLIsBFV/MYMZCLyNfYnJYWsF84t0K7sU8z/UezZZcZPZZ43cxKb+CZpZgib2GWFfKkQfUMXZ
 8bznSWEVCxy5UFbINyeHLt1PVgDnXpW+I8rbcqnpylLKJLHDJJvdZ8LMUGVcscy576erQPe/
 r53bpTXlkoGDLKjPnKHoOb/yGzmy1BrVfgaTOQHJoa+zvZORTp5UJc9PJt9JdM4x/gLyo8kA
 FnmCxAAlQqXaYL7xfWiMSs5NOyHsWdXqHMwJys3Oli0k3Mke57H0UvsX8pfQFXTz8Q6laQcZ
 6BcI62oW60TIhyZoWh1Rcem9uRKKk/07T9iygL5OlDTibY8HVSRorcJv2LHqEEzM8ZAnZdk/
 ez+jVKCGcRrqsYLJJ++Vc9DBmiZ5RA18N+elWORSjWPUC0AKLRXFhE=
IronPort-HdrOrdr: A9a23:98SUjaO/NEItdsBcT1j155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE8Qr4WBkb6LO90dq7MAvhHP9OkMAs1NKZMDUO11HYS72KgbGC/9SCIVy3ygc+79
 YHT0EWMrSZYjZHZK3BkWuF+qMbsb26GdeT9ILjJhlWLT1CWuVF1UNUGwybGkp5SE1tHpwiDq
 eR4cJBun6JZWkXRt7TPAhOY8Hz4/nw0L72ax8PABAqrCOUiymz1bL8Gx+Emj8DTjJ0x6s4+2
 StqX212kzjiYD29vbv7R6c031koqqh9jJ3Pr3CtiFaEESttu/iXvUbZ1TLhkFOnAjo0idgrD
 CEmWZdAyx+hkmhA12dsF/j3RLt3y0p7GKnwViEgWH7qci8Xz4iDdFd7LgpBicxxnBQzu2U6p
 g7ql6xpt5SF1fNjS7979/HW1VjkVe1u2MrlaoWg2ZEWYUTZbdNpchHlXklZqsoDWb/8sQqAe
 NuBMbT6LJfdk6bdWnQui1qzMa3Vno+Ex+aSgwJu9CT0TJRgHdlpnFos/A3jzMF7tYwWpNE7+
 PLPuBhk6xPVNYfaeZnCOIIUaKMex/wqNL3QRKvyHjcZdA60ij22uHKCZ0OlZ+XRKA=
X-Talos-CUID: =?us-ascii?q?9a23=3AT53Mw2sbHc2bv37ZrrSosW1Q6IsES2zmkFf8LXb?=
 =?us-ascii?q?nV3pPdY+KcH67oYFrxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3ABV2Tmw1F0ZUuAMZO0ojxY2j8TTUj5IuVJX0Im4U?=
 =?us-ascii?q?/4OraMRxOJCqGsReLXdpy?=
Received: from mail-southcentralusazlp17010018.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.18])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2025 11:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jQogEzvDNAg4g3uKfNSyUv7zR/8TPrDW/EB8qGkhATrP1BUucfP/wFP+NgAQtaN/KUg2pSGdWdI/Z1JWwUUWb1/BrGE0u5XXdE/iFzPAbzcjHGCpwfDoG5T4BMkJzu3bcvSiDNHPBkhuVlEZDUEFMm2FOv87T59dPoNh28qX3Zrh9PCUW5KWQmls7+R0L7Yc94OypZXk699S7VjSlOyeZ4V7UriPkB1C6vWvkT0f4dRPGvaetQ9jd5KAl8M9c8xnoPk0vBaOTzLFPExYCx/OK9W+01UlurD7xLOY6Hvz9dFb9VyAp+tPOY9KZitqq4QSQdOGnpXrquCrZfRcYD7YIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlDYKmukjKU95atMKYXUyjwSp6QOtrQMCFmL6KzuqQQ=;
 b=FSD/+5+jqcQ55Y/lEzM4rrB/4UxwXy0jnA7NbFg9LpQke0PZ/gGDRA+/AORqJqsL833TDsyHF2+PwdvzTtyajDi/0q5s4iQ6JN4p0lZjsWUIXEciYtM6S6GyFGnItV/IWAaT5k4D7+eEMrdrkMyYDF/n1HgM3ZRQcOuDIJEiZv4ZR/WSJYCKWcn3WTBQiVb7xHgtHWt90mMquMTyK0Lw1Ubo0eVaDklnIZc5FlMdhcScKv4wiZI54/O5WosSTiHpcya7GPB0uT4YJoNku7f9OGj6IoIDFmpYeqE63tKG1pb9pZm+NlQdblCQH7t4dYDr+C37wvwrHkfuDGTpyF/u7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XlDYKmukjKU95atMKYXUyjwSp6QOtrQMCFmL6KzuqQQ=;
 b=g3LkFnqtykbJuT1jql8Tsh030sf32kyuFmCkI41+Ua3aCqas/HEEQ/ftPpeFUVlFm5pTa/pDxYtsI+j3gWL4S7bvfyQ61eDQOnA+Rz5pAu+w8ghLuNRI7xtWxSK9Ee33EooX7wag5db3TcfcvTk3liestdhNoXlOs9Yee+AePAU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MW4PR09MB10391.namprd09.prod.outlook.com (2603:10b6:303:1f5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 18:03:17 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%4]) with mapi id 15.20.9052.014; Thu, 21 Aug 2025
 18:03:17 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Error on USRP N320: EnvironmentError: IOError: socket closed
Thread-Index: AQHcEsUPDHQELsVejEqcKVJO1CcCBw==
Date: Thu, 21 Aug 2025 18:03:17 +0000
Message-ID: 
 <SJ0PR09MB9126664B51E33B5755182C15EC32A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MW4PR09MB10391:EE_
x-ms-office365-filtering-correlation-id: 29caa7ed-51d1-47b6-20bd-08dde0dd017d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?wSR2ONdH0nn265qDfEJNLMz86EPWSykU1QxDsUX+o8N6Dcgth/JygZY5Cv?=
 =?iso-8859-1?Q?ymAZezCD+OMRLV2fgllXXnQZjLqqeOBqO2oeICb+4mla/Yy/XsZNbxBLyg?=
 =?iso-8859-1?Q?6DslwqH6m9NvamPlHsNLUMBp1ezD9dAvf1xF9f5a1YrcgLt8rDro2j9o4t?=
 =?iso-8859-1?Q?YbKQtLdv6xcsyeagEWNYaIaCgK+Dc4dRlS+NcWzHsLsiX+6clMOkqC2DGc?=
 =?iso-8859-1?Q?/2X8txzQyh5tE/bYjMLWY8bcpL0k8sfs2Ip+8dEgff6neoo2W/ODsM6v9Z?=
 =?iso-8859-1?Q?qX94GxlHvQyl4UU5UFqEB83FtRevmI4PBx7L+RiohQ+mAwQV2a5inUM3p6?=
 =?iso-8859-1?Q?anTOAgct9yWEk3rSeyeb9f07C8Tg5Nl7I4ltzzezlvafZ+l70LNPYiiBYr?=
 =?iso-8859-1?Q?1OK6YgFM820P0shXM8HCrCdwbYeopKGAz3a5d1BK5kw1uBa3o+yw61zqBl?=
 =?iso-8859-1?Q?jXplrxIaLufRdEYaOwLxi5CLXeTF82cP7XB55C4rnTcmKkUGwApWBLqzp+?=
 =?iso-8859-1?Q?c/vFxTyq81Jc9yuiQHyGSUjyIic9uJRO14E0o/4jn6wXL2jfheQWxo51N5?=
 =?iso-8859-1?Q?46QNTCoKNA9pl6QfdndOmccxxYcWrOZGLfrKGmpfUXINfj2lz6MgxfIDdh?=
 =?iso-8859-1?Q?KTtpeaWYdAGjizAgeSp/1LOFsGcpnJlfN8PaDjLd3+8xzUJ/5ZiO3+t2Cv?=
 =?iso-8859-1?Q?A8DJiComFrfOacSt4BXkhYTsNYjaicz5r+IS+Vy4SJ6sz29ynI07M1viz2?=
 =?iso-8859-1?Q?gmoIplpch8iEHohIv1yEjaS3WZOGeJY9Jb7uj3iY2ghIHyo68VN9ZMy6Xo?=
 =?iso-8859-1?Q?wMBSfFcdWOKyiFr8BMt3xh1hHjc0FRkfI+IJLAkF0834UWR7Ftc2ovPXJp?=
 =?iso-8859-1?Q?kcPHLkhOZrDzMDw7FP10xu4l/mj4BNpGTf6aCF/aCblxV/5Nt3G4DF85Z7?=
 =?iso-8859-1?Q?Sw0FJ+Tb9IHy3fY7ZcblKx46PnvM6qWw1xl26gKk5Wms1XaXCtBt3QI6a8?=
 =?iso-8859-1?Q?QWYItNopKSv0Il/B5OSHzrAyLir8mr1u2dya4LDzssLrBc64GPp1y7pGG3?=
 =?iso-8859-1?Q?Ft08M1g/NlG6Oj5WN/UVANCmhHFMOU/gcVquD5z1IhUXCG3RefMCVTKWPO?=
 =?iso-8859-1?Q?GzidIJ+Ja3nOxgo+PschBLD8xXw2EPgHUCl7bRoMCCq2WxlPMqiNeYKF1L?=
 =?iso-8859-1?Q?TMuxcSil/HdV4ZWyUzZi7/OFbN8eamFv7Aq2TMO+nikzSKQOi2OntOjq+m?=
 =?iso-8859-1?Q?w0k7a5pGEGBl9kk573pwFexZFqbt9BpP+cUTYbQG03i4Fu2p9kmPejpGFI?=
 =?iso-8859-1?Q?Gmv9OcCnD5QXSOiu2HRBl44IIcpmVOkZz1RZMqN3Qu2laKmfe2LUcPqaq9?=
 =?iso-8859-1?Q?omNJ1NHoVFdRKEeZQrnfMHOw4sWTQFPnA3CTcsoSwB72WylTRRbL0isSnZ?=
 =?iso-8859-1?Q?WOQhbcNjh4YadClumBcyEMen+IQ/ENBcwq5Ie3kdkIWgLVjwHj1MuaepXT?=
 =?iso-8859-1?Q?okOPOPc+ai5m4pi01n3Z3Bbdqzphr3qn+7TX5OjmKool0/Dwl/ozvSAkv7?=
 =?iso-8859-1?Q?IzM2Xd8=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?V9ALEArKbLd/Xf0LkdbxW9P0eYAQ5Xb/dxGN/DHxJSL4mbL7qvaQXyEIKf?=
 =?iso-8859-1?Q?c+Cm4KNq58TMl7iFkN75u8asjxXDYix+wED9l4WkMbNo0+zYJy2YHwHlSl?=
 =?iso-8859-1?Q?Cae1hWJhUgKrb/qVCA0guXAW/GdKa+j5jcEAyx4C/vXu+JLEwiig0dqiLH?=
 =?iso-8859-1?Q?yCuKrhCzr6uxVpxXBoDPRLfdUY7Aqpywes8NZpdssvydLJePOOQ24PeQVH?=
 =?iso-8859-1?Q?aCrQsCa76vZSQ+N/W9g96MjubpZIwvwrrR4JH+Z5TmaOZv7YUf4rJMgqgS?=
 =?iso-8859-1?Q?LV6/Rd9dCTNVisKmdGRu5kmIuevpPjSvhY2xbmklckMCttUH5iqheX1zQH?=
 =?iso-8859-1?Q?E2+drchJwWcBh/qXsX9OClOd7F+39hx8ys4Z/t3TMr0Nzm0EzfpVZq342x?=
 =?iso-8859-1?Q?N4RTlQnXG+nzcoBi9mhw35jjrDbeT7h1yZ9NAljF9Jn67dfAG8Jn+w9Vbb?=
 =?iso-8859-1?Q?sabTDp9JrrsGub/WnlxCwbIRndM8cEfFBxCtinxcKFRTIDytjYCKKrVciI?=
 =?iso-8859-1?Q?vmOACbwGaeD2AgyWliIC3yoqCJjDZ3yRrjH62SwgzhKp870hAqa1MSx+7s?=
 =?iso-8859-1?Q?oCzFH1dbaU74uNU/jSmr9WD4G+k0cpRR+cwm+GyAzCNEtxwdFKkkKAsEP6?=
 =?iso-8859-1?Q?Ulazdxl0y3HzXuft1fFYA7zlftk8dHJMLKSzTS+pLYFecV9NvEVevYlbcR?=
 =?iso-8859-1?Q?99otLjHropF8Yd0oOzNaax4SnzfE7I3r6gPDGx2OUu5Kh4lS3IkNi9feU6?=
 =?iso-8859-1?Q?vxXvM0rE+4VR7eFkMoQyKwGEXhaw4OFy1OZun0a5xtZ3+Ct5rQb6w+3/Ap?=
 =?iso-8859-1?Q?60q0OEpdJAym7FgeON4RPcFRrJ22O6H0tO517aPhpmwISvVYkJOKDs2pCR?=
 =?iso-8859-1?Q?pi8g+5uQvKPgKTkNagz20wYTXVUCSUf4vF7AKltq/QVR8mf0o0cTorBMsd?=
 =?iso-8859-1?Q?meVQrBkRoE1rNGCUC6/7Xwkp8ndKStRDf82JWTTqp9Vc3yDUhkwA+Spplw?=
 =?iso-8859-1?Q?3jo3qXNnk6jWuR4KTVsKKBL9JZb43FFN5+EjId0jhqa7Omgjjmie0IaIhZ?=
 =?iso-8859-1?Q?uFgEYg64UlrFMvnuV6yZpYhpfEHysSYTcbg7tuLIPUqVQO1m0CX3rBsuuE?=
 =?iso-8859-1?Q?xcNm5wXaYFFqK4MRRw1QhiZgYQO0vKGVQSNAnlBkqMNKGN5XmOpJk35NTn?=
 =?iso-8859-1?Q?Mjmjnk3GC3uDoJlaku7NlKJ25njkxSCgAbDXy0v1geD/Zir6icw5euYf8O?=
 =?iso-8859-1?Q?v6VLj4mtVHZHz1ixX0LlXuiiD7hVrFdFP9tZsLk97W8YltyFS5xa68zkCX?=
 =?iso-8859-1?Q?/LH54keWThT3W81w5OfShPnRyoPUL82xOkdOLse12KbKEVr//+XL1SFq/O?=
 =?iso-8859-1?Q?urcpAh8C1fHgtTjj32/swu67boF0BcXopyuWstmFHH1LXAP9JQWdCW8ZfB?=
 =?iso-8859-1?Q?R3AaAxVbOD2OQVrclUHe+VoaOjo9UqDbJzXTxAnPk43oT926Re1mBCM6tx?=
 =?iso-8859-1?Q?LQLBgF/RQzgsaHX3f5f/1DV3Ly8PGOG3pwo6WRsgJnKDsi/5AN+SBcm6GH?=
 =?iso-8859-1?Q?d1Fe+viuNA22HO5SjBodeuYEb+cX3FV1Ct/e1eNXiv/x92bwSq0AfrUJ6p?=
 =?iso-8859-1?Q?8Xx6WesU/umOE=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29caa7ed-51d1-47b6-20bd-08dde0dd017d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 18:03:17.3239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB10391
Message-ID-Hash: 5SXYK7F75WEHRTNELQXHAZSBIO6PIHXU
X-Message-ID-Hash: 5SXYK7F75WEHRTNELQXHAZSBIO6PIHXU
X-MailFrom: prvs=321edfc83=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eric J McDonald <eric.j.mcdonald@aero.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error on USRP N320: EnvironmentError: IOError: socket closed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SGXYSKVTBMUDZILROAYSUNDT3Q3ZUKI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5771853248273533683=="

--===============5771853248273533683==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126664B51E33B5755182C15EC32ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126664B51E33B5755182C15EC32ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am randomly getting an error from my native C++ UHD application with USRP=
 N320.
I get an exception thrown:

EnvironmentError: IOError: socket closed

If it happens, it happens on startup, before any samples have been received=
.

This is usually, but not always followed by:

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Radi=
o#0:OUTPUT_EDGE:0, no neighbour found!

Any ideas?

I tracked down this exception to the recv_udp_packets in uhd_common.hpp, bu=
t did not follow past that point.

Currently I interpret this error as a hard failure and exit.  Is that corre=
ct or is it actually benign?

Thanks,

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126664B51E33B5755182C15EC32ASJ0PR09MB9126namp_
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
I am randomly getting an error from my native C++ UHD application with USRP=
 N320.&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I get an exception thrown:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
EnvironmentError: IOError: socket closed</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
If it happens, it happens on startup, before any samples have been received=
.&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
This is usually, but not always followed by:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Radi=
o#0:OUTPUT_EDGE:0, no neighbour found!</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Any ideas?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I tracked down this exception to the recv_udp_packets in uhd_common.hpp, bu=
t did not follow past that point.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Currently I interpret this error as a hard failure and exit.&nbsp; Is that =
correct or is it actually benign?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks,</div>
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

--_000_SJ0PR09MB9126664B51E33B5755182C15EC32ASJ0PR09MB9126namp_--

--===============5771853248273533683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5771853248273533683==--
