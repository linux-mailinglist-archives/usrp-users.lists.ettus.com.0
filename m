Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 519E4A17501
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 00:26:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FF76385E1A
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jan 2025 18:26:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737415597; bh=AdkRb3by0PIiw6M/kzqmRneNqnJVlWZEt1clQEb/vTA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Kg0ZlIC/sHHKLD3os44Qs57R+ANF+IpHPcVHlbL1ZG++Q5Mjai02n3bjZGy8jSvY/
	 sac8RZl+TUWldZBT688a5oQGvVDbdd7csSOjmaRnh5pAojMRiWnNknAgCHkIZ8MSHA
	 +TREA89Sr6WqU3JEManF9qdIUSzU4FAfnrXXKAXGEwvYgG7HL8JLnsF8hWzjHls9sd
	 2vKLUqNsPtXZHTEbdhKlBXU8/16kBqcRKAifvTLh5G1GN/FCgopCOVjlKAIQPsi6/u
	 1ku88+0D3dCjsyaNwrih1lgwufv89vf64VUQfWvMcd7dXfq0UyhauhwFp3SN1h/yzh
	 qV9zrAu1//gEw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id B8118385D84
	for <usrp-users@lists.ettus.com>; Mon, 20 Jan 2025 18:26:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="sTjBGZiB";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="r+tIYLY1";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1737415570; x=1768951570;
  h=from:to:subject:date:message-id:mime-version;
  bh=xxoP7SDU3ddfGPkekKYuxMtmbtzOW34c9wCBTEbPT3w=;
  b=sTjBGZiBoYPADjsCEJeo+j3W4/fQQ+QT2+SkWSyVJk0rxacpwgtvTszO
   W8iQcFV1Luo/ewD/j84h0OS+IhJZj8RySfMEK8Akg0TI73lOhv208scEN
   A10IgWIpB0VmnvMI5z0Rv3SEfbwAv9Ez1A0pBmWxfZ2g6Pu4zshXxW/71
   c=;
X-CSE-ConnectionGUID: vCH3kE18Sq+hLd971deqpA==
X-CSE-MsgGUID: phwq4E+aQvyfkh9efBiXWA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="6355933"
X-IronPort-AV: E=Sophos;i="6.13,220,1732608000";
   d="scan'208,217";a="6355933"
X-IPAS-Result: =?us-ascii?q?A2H9AwD12Y5njg0BXShaHAEBATwBAQQEAQECAQEHAQEVg?=
 =?us-ascii?q?VMCgT+BA3uBZrRggSUDVg8BAQEBAQEBAQEHAhQTHQQBAQMEhQACinUnNAkOA?=
 =?us-ascii?q?QIEAQEBAQMCAwEBAQEBAQEBDgEBAQUBAQEBAQcEAQICEAEBAQEBATkFDjuFe?=
 =?us-ascii?q?w2EB4EmAQEBAQEBAQEBAQEBHQI1gQMZAQE4EQF/JwQbgnmCHQ0HAzG0KYEBM?=
 =?us-ascii?q?4EBggwBAQYEBNseGGGBZAmBSAGDeoFwgmMBKoEyhCqFEoFVRIFXgjgBhTKEE?=
 =?us-ascii?q?4IvgjZLeoIEgWqGVJh7gUciAyYzLAFVExcLBwVhgRADgRSBSns5gg1pSzoCD?=
 =?us-ascii?q?QI1gh58giuEXIRFhFGFW4IUghGEcB1AAwttPTcUGwUEgTUFmmMHAxCBF4Nug?=
 =?us-ascii?q?QJfghOTKAozjwWjNjQHhB4FgVgGDKANF6pTmHypAwIEAgQFAg8IgWdogS4zG?=
 =?us-ascii?q?jCDKlIZD446g2G9fXg8AgcLAQEDCZFrAQE?=
IronPort-PHdr: A9a23:lS913BdJnXlug+pO64elcPiTlGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:cN/Y4apBwFLO05SCZqLq4uKw2dxeBmKaZRIvgKrLsJaIsI4StFCzt
 garIBmCbKyNMTejfNkgaoS2pB8C7Z+AytQ2GgE4rys1Fnwb9JacVYWSI27OZC7DdceroGCLT
 ik9hngsCOhuExcwcz/0auCJQV9Ui/7QHtIQL8adY3srHGeIcA941FQ73bd/2tUw6TSAK1vlk
 cvopMHCM0OS1TdxM2YFg4qOsxoHUM7a4Fv0hXRgI6kQ1LPivyNNVs9HfPvpdyGQrrR8R4ZWe
 c6SlNlVwUuEp3/BOvv9+p7nf0sDRKLlPATmohK6jID/6vTqjnVaPpcTbJLwW28O49m6t4kZJ
 OF2iHCFYVxB0pvkxb1HC0EAe81JFfYuFLfveRBTuCEIpqHMWyOEL/5GVCnaMWCEkwre7K4nG
 fEwcVgwgh6/a+2e3pmbEepB35QYNYrrGI9O5ShswCjBJKNzKXzDa/2iCd5w9gZtvvoWTN3jP
 5JALz1ycB7HfhtDfE8ND44zl/upgX+5dCBErFWSpuw85G27IA5ZjOCrYYGTI5rTHq25nW7Bz
 o7C12nkDRwcOZqQ0zOU7H+2rubChyS9X5gdfFG93qAx3QDCnTd75Bs+TVukuKWUyUeHRcNRK
 ExF9yQErJgN3Rn+JjX6d0bj+iLb1vIGYPJNCPcirRyWx7DPywKYHXQfCDNddME98sQxQFQXO
 kShmtroAXlwvaaJVGmU5LOM9GzqYHFNdDREYjIYRwwY5dWluJs0kh/EUtdkFuiyk8HxHjbzh
 TuNqUDSmon/k+YV/IXg/n2e0wm15ZjtQl9qvwnaR3qMu1YRiJGeW6Sk7l3S7PBlJYmfT0Wcs
 HVspyR4xLBfZX1qvHzdKNjhDI2UC+C53CowaGOD8rEk/jWpvmGuZpxN+zhsIF8wbZ5dIGewO
 wnUpB9b44JVMD2yd6hrbomtCsMsi6/9CdDiUfOSZd1LCnSQSONl1H8zDaJz9zm3+KTJrU3ZE
 cvGGSpLJSpAYZmLNBLsG48gPUUX7i4/33jPYpvw0g6q17GTDFbMFuxaawLXMrFjtvnYyOkwz
 zq5H5vbo/m4eL2uChQ7DaZNcQ9aRZTGLcyo9JEPKrDfSuaYMD19VKaAmtvNhLCJb4wOzb2Uo
 RlRq2ddyVHlgmbAJxnCYXd5cNvSsWVX/BoG0dgXFQ/wgRALON/3hI9GLsdfVed9qIRLk6UuJ
 9FbIJroPxi6YmidkxwHc4LHpZBvHDzyw1rm09yNPGJnJ8YIqs2g0oOMQzYDAwFXUHvu5Ztl/
 +TIO8GyacNrejmOxf3+MJqHp25dd1BE8A6udyMk+uVuRXg=
IronPort-HdrOrdr: A9a23:kDpYKqyh5w4HZWAdNjuTKrPxzuskLtp133Aq2lEZdPULSKGlfp
 GV9sjziyWetN9IYgBHpTnyAtj4fZq8z+8C3WB1B9uftWbdyQ+Vxe1ZjLcKoAeQUhEWlNQtsp
 uIGpIWYLKfMbEQt7eY3ODMKadE/DDxytHLuQ6x9RdQZDAvT5slwxZyCw6dHEEzbhJBH4AFGJ
 2V4dcCjya8eFwMB/7LTUUtbqzmnZnmhZjmaRkJC1oM8w+Vlw6l77b8DlyxwgoeaTVS2r0vmF
 K12TARp5/T/s1T+CWsmFM73K4m1ucJ/+EzSPBkxPJlawkEwTzYHLiJE4fyxwzd5tvfoGrC2e
 O83ivJM6lImgnsV3Dwrh331wb61jEyr3fk1F+DmHPm5df0XTQgFqN69PdkmzbimjkdVetHod
 B29nPcs4ASAQLLnSz76dSNXxZ2llCsqX5nleIIlXRQXYYXdbcU9OUkjTRoOYZFGDi/5JEsEe
 FoAs2Z7PFKcUmCZ3ScumV02tSjUnk6Ax/DSEkfvc6e1SRQgRlCvj8l7d1amm1F+IM2SpFC6e
 iBOqN0lKtWRstTdq55DPdpe7rGNoUMe2O8DIu/GyWYKEhcAQOwl3fe2sRL2N2X
X-Talos-CUID: 9a23:90Qmy2zvV5PbhKrQ+zRHBgUKMeB+cVCEnEzJYE+cBTc2EbGYUEe5rfY=
X-Talos-MUID: =?us-ascii?q?9a23=3ArHp6Fw1eMsymxGQ1/HuvP2KXSjUj+6SxERwg0pw?=
 =?us-ascii?q?/pdiKNiwhNjm3jQSIa9py?=
Received: from mail-westusazlp17011013.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.13])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2025 15:26:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AqAHazsno9sq39ArIOJbWlOkMk1qaQXXEwrQ52RYCe5N0MozbP6w/ntgYalHDJWOX+aTOQM+bdnEDYpXEikWKBW5H9eZ/aEWALPivR3WdjJ5PcpV9UkpeiAyXmEankOD34vEpT8pz1UdeAOfZb5cQJTW+rUodWwWWagVckaKFRFGSD7odFIeVz+w7qlB3kMToIc6+Bu/TwQWkr4zoDMbsaeEgDtA9yO2O3kitu+GRwE1+6tpW1mxQumvS3SSwVuxoLToo3w/lA2LRSOkFo/IwBOFPLM++y0aD0++6e9B84gndShwScVf8cnVZrGC4tiG5ubYyZQCGzEUO6+jCPTzsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZekB8IOyvytzQleP5klCaAv1neuOdUS6H2ZXPmlKFY=;
 b=TmB5gYNqXessudBUaUOrVYALtfVR5Fi6B1g1Dw6g8TSaX9ivkoIvaMtT7Kz0NxmBPMHCKZvw3SeRsU/B/LgxFq/rDvhCnQS6mG5LXNk7XW1caz0v82/lt8PFiGpDGQ3/h2nDLF2DSpdVNhV71iXS+/G5wUw16LtR8xgyQRwN1uFx0jL0mixMBiDO5o5xKnzZIybP860k26sWP2xpvhbolG5UrcAoOeavAyQT5jM/vL4GLRval/NjgwRhrdYuFMjOTc2j1Lw7Y4d6In3GutGRBJkDr+j2cbCUogCXOzpjXqJfgenbVbmmC5WbTqzk1j+9sdHAemEQnu41wii0qjRwxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZekB8IOyvytzQleP5klCaAv1neuOdUS6H2ZXPmlKFY=;
 b=r+tIYLY1yBdfA/zykxZebn7j0utrF+pohzS/UEpDnRH0Wj7LtKTxmdNulo30SlhI2dq3DEKHTpS9K6tuH33tfZwkiWnqOVz5Ctz3cfuaHE3akWgfDiaQ6G990DAnHlX+qA3bP/WsixJvBhh+lZj7KIKJF3Vczjyz9k8HO+qT1cU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH8PR09MB9390.namprd09.prod.outlook.com (2603:10b6:510:187::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Mon, 20 Jan
 2025 23:26:06 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 23:26:05 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflow reported on first packet 
Thread-Index: AQHba5Fa9C7Bs431MUOSFvDKzzjcLQ==
Date: Mon, 20 Jan 2025 23:26:05 +0000
Message-ID: 
 <SJ0PR09MB912650439B1EAA173D62A6EBECE72@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH8PR09MB9390:EE_
x-ms-office365-filtering-correlation-id: 6b4946d5-d212-433a-7a25-08dd39a9cfdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?uudQOhvc+jqBC0pQpk136n6ub15pkXR5v/AOOpgKq3FfQ67nmfdiX+jp?=
 =?Windows-1252?Q?pmiN7KDGYT+MMQroHBoAIFH5m5lCnR6PT9DtXasTvJ6KOf4zeuXJgqTc?=
 =?Windows-1252?Q?qWc0WeFW3hE1j4WTmE4RaUSP9B4TiSq+UguQ4sQ9cyjVklZzD7YAh0sN?=
 =?Windows-1252?Q?e1m8aQON5vPIJ8jgm71+mSgBrnQy1It7skUZ9Dp2fJMEg7bvB5TX04le?=
 =?Windows-1252?Q?DwdYoOmaQ7XgQQRcAJA0wzfUWqqX/KzbN/rq5kwpjIs4BLNc1KmY+8He?=
 =?Windows-1252?Q?RBru8eKpsmAgYSZBZft2OCtGTHufv9Iid9IFfhNJ+e2Cgh/Mri8vuvbj?=
 =?Windows-1252?Q?3pmVhRyBQcm21zM1OuqF+gMdRodGXCFkSWbeUEuLwteifZdU6Oy+9ntY?=
 =?Windows-1252?Q?Q6eZnGAMdMiJxi9d7OYVhxVlcA55zO9AqTcqIrC9mtcmKXenIYiSVQpk?=
 =?Windows-1252?Q?iwRCUXz28yKzFTsa3HPZJW8/cNtO3V1t1xuXDYKKp5lYTWiOOaZBW4T9?=
 =?Windows-1252?Q?V4W53mLV98ZTgFMVxs1h2IcPt/wUEjmkfcGO7t770aYm54NLd/195oV+?=
 =?Windows-1252?Q?AuGIICGU/puwMkKXI+SqHyKkfrltgOvteHOzKpck17yO6t2LQSZ3X0uO?=
 =?Windows-1252?Q?ICnY/ddFM+Dm6VNPHAmYfr+1oN9hvI4mQMf787NJSY+NxqpZtwDexfaW?=
 =?Windows-1252?Q?yLZGCgOSpmgwISbUKDtj3imt3pR35MR65psoj9rb6zA52yMUUoFq0D/N?=
 =?Windows-1252?Q?VZKVY2KUB/IP433KFE6wRMztiY2Fxn082cqVLyTMLm3iST7RhKlPOAkN?=
 =?Windows-1252?Q?dX+bJNno1/pNQHwlxA2TNKRYCcKGIPRUhR1L9QcwjOPoRMWjN39rVsLd?=
 =?Windows-1252?Q?exYlm3agTiP7jp0iP0wo1MLXIkrI8j3YsBvAVyryhTqqhgZ/l0mtJbHK?=
 =?Windows-1252?Q?DoHJOq5377hl2TIwvdmpvfSMbpHdPEJl8DGWQWlQltm9nQd5qzw0MRnN?=
 =?Windows-1252?Q?P2lGpjk8wrHZwohFLG7UBdbOzPqti98HfjDbJCVVm27lttLbnZQQGfDz?=
 =?Windows-1252?Q?Q6Y6hpB//7FGSHMNnlQa1+toxj4NS1OkaDEGeyc6xHY0lnPK45mcgihq?=
 =?Windows-1252?Q?V9VozHna7J38wirtV0nyw7sSIAmx2CkO6kcqa5bwVC+/GX6g+8gwtlxz?=
 =?Windows-1252?Q?gyFogj5RclfA97aqBzGU0srr4ltY88YutvxaAVXbSB1dZHViLiD46v26?=
 =?Windows-1252?Q?lviDhMz5X5mARxAeIBlCjdYejQjRw1Zr0mM1y2vQ6JyLu3QvB30y36cS?=
 =?Windows-1252?Q?6ywa7B7AneJBL6dgOW7Qjtu2CCgLF+1HERM+Pzy47lBW1pcDv9k1vf1r?=
 =?Windows-1252?Q?T4G43HHEe7zAqM78q/Hgicmq6NisRUme3/lzEPvvb8deRvDo1WC+EHYr?=
 =?Windows-1252?Q?Kv8SfnDoe+jnT/Ac3MIStczUqRxuxGVGYGVYYMZ9P8zUPjEsXQLd79Mf?=
 =?Windows-1252?Q?BqMMf2RHB1KDsIaI3XPc/eWHY0j3uEoXyzEq9nd0TY3wy6o7LUOQF02l?=
 =?Windows-1252?Q?A/ZTO+eyy7FmxmmY?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?J4aOYjjqjzpRg6/b2vMTLYhVvX4241Xo6M5iLZorYkhPk5d2XK4XcMrf?=
 =?Windows-1252?Q?9bLou8PQejvvh+zYAxpxzwl1SKpSDDB80w13V7X4j4KpP7QJW2Wdi+AU?=
 =?Windows-1252?Q?RMfPFd1DoVblkZFputMzpfx7JoK2OPzRTajjIoTZTf+J3s9/tVbRRizo?=
 =?Windows-1252?Q?QRFuySvpwyR/QWALgr49A/3+qO/+HL/KRoYDSEriZG/8uQYkRCawLHTw?=
 =?Windows-1252?Q?2I9aDOCmRS3OdJZ36UnyYVOHOPqYg//eoB4ETfKUoSqrEsW+riApCPK2?=
 =?Windows-1252?Q?7onPAYy4Is+G5TFvqeDd3jT5I9q6TM5/y1dhuqCnJjocrYUxrNQwEUyR?=
 =?Windows-1252?Q?P40/74l1oKPsahfpJhG4aeNlADzL5eFgGMJ19iJw5oT0Nk+llYDGQqoL?=
 =?Windows-1252?Q?Py2UaVw99tICMsFTpuw/dtLzOKIaJWIH1YYbnmMqRCLUcnHsZ6grYVnz?=
 =?Windows-1252?Q?ptRcgzJMAvVxtYJ35TRAmTQpY6aquJmqwytO9J1xt3X7FlX5s+LlHbk5?=
 =?Windows-1252?Q?mMIjboneREpdwcvxN/3qrHAhGfehBSxULGMYQvHeSNSBXRNTiT14rV2S?=
 =?Windows-1252?Q?re80XMw/Qixd4ndOat54+SajOmrdPatJcpC+YYJl4b+Rt+Jb+QD4Ts5s?=
 =?Windows-1252?Q?1d8Fy1P1wMrjgCupStMqA69ci5Arx6nHfTE7X0CF6paQYzetGrvr31b9?=
 =?Windows-1252?Q?+N4INe6N5/h0+vhY1RTIZmswZ3fhinfrGDMo/WvCMRGLSt7QFSE0YfUc?=
 =?Windows-1252?Q?wHq69iLiXsf61Y+oFw2aEN3bebCKfZOcymZxgoco/WIuDPdjV3GCunUf?=
 =?Windows-1252?Q?W0ROKGpV+EiqQERJ9l4lSuXVITCfo1WyHbsmAKXMDMzkEP0myMgxNd/8?=
 =?Windows-1252?Q?XAGv63hJtZnd5o67eOS9WdeVBKlVcJ1LBxs9BzYO5HQfs8ZKso6K8TNh?=
 =?Windows-1252?Q?QbOpUYFyEh3RAHeia/J9+CS6JjhKOMHXOQO1BwX0iAGRyNPJUDxQq7sg?=
 =?Windows-1252?Q?kD0WUshVjMfMt3JOgksES7g9zbdpRW6Ei0/hE3JSdkMMmWNfUB7fy7qI?=
 =?Windows-1252?Q?rai/+YkTJQUNryIpagQmU5x4oCJ9hdp0kO6dW06tjIpHFvAsbc9zdqTW?=
 =?Windows-1252?Q?7baEJoXh2JN7X+e3cfa9VW117EGqYXfmhDJ7XzHIPtqtdC8hH5ypiCbz?=
 =?Windows-1252?Q?XTfrDyf+7Qhu9Jm7bL4VGCGlqKtBn6twy4oV970EjoRbGY6Hk4G5Qm1j?=
 =?Windows-1252?Q?1W91KbBCf8oSPpVbDiCtRsvnv4+B5MKepcr8TSmsIvxRL5FksRszYJgx?=
 =?Windows-1252?Q?ia0/GWQkJltBtkqeu26hKQMQbWU1QWLaKVPI3Qvxp/iHSIlC+28cYxiT?=
 =?Windows-1252?Q?9Mb1FuRMTDqK9JUnRmAMhQCPN4LGkJ1mF3NDrHpkGzUi1XtGBLVMn3NY?=
 =?Windows-1252?Q?fOlcs/BzQ4p2ooQF9lyrQSEmFr6WbqEku38EIB6vPrr2RNjo6Uz6uCsl?=
 =?Windows-1252?Q?zMtSusk/dVgRA38LWKJM2y2HM7SSbajNvd0aqW/toDuwMcPE3N4iVT5v?=
 =?Windows-1252?Q?nWKdmbYAofe7e7BrJKCE9oLGWliV7B+6zzeOvtqACDLuAWC4vTM/L6H3?=
 =?Windows-1252?Q?I/+WfVju5pjIKUmFMY1lhD5WgmnihE4lhG+RqtD0YoCpPU/yu5tP/JPD?=
 =?Windows-1252?Q?d2SOKYxCQpU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b4946d5-d212-433a-7a25-08dd39a9cfdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2025 23:26:05.5903
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR09MB9390
Message-ID-Hash: QYS6C36MYFUJ6OQ72U2PR3WXAKAJWCAP
X-Message-ID-Hash: QYS6C36MYFUJ6OQ72U2PR3WXAKAJWCAP
X-MailFrom: prvs=108cc9c42=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflow reported on first packet 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HEOC4GOEVVL2Q3FGEO6H7APJMXPRWPXH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7477558218383283163=="

--===============7477558218383283163==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912650439B1EAA173D62A6EBECE72SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912650439B1EAA173D62A6EBECE72SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

Using UHD4.6.0 on ubuntu 22.04 with X310 (same issue on N320).  Using a cus=
tom C++ UHD application.  The stream start command is timed (about 30s in t=
he future).

size_t num_rx_samps =3D rx_stream->recv(buf, len, md, 0.1);


As expected, I get a bunch of CODE_TIMEOUT while waiting for the stream to =
start.

About every 3rd time the very non-TIMEOUT response I get is zero-length wit=
h the md.error_code set to OVERFLOW.  This seems like a UHD error =97 how c=
ould it have overflowed without sending me any samples?

Thanks,
Eugene

----------------

uhd::rx_metadata_t md;
bool waiting_for_first_samples =3D true;
uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOU=
S);
stream_cmd.stream_now =3D false;
stream_cmd.time_spec =3D uhd::time_spec_t(start_time_s, 0.0);
rx_stream->issue_stream_cmd(stream_cmd);
auto len =3D rx_stream->get_max_num_samps();
zmq_sample_t buf[len]; // NOLINT
uint64_t total_samples =3D 0;

while (!stop){
size_t num_rx_samps =3D rx_stream->recv(buf, len, md, 0.1);

if (cbuf->enqueue(buf, num_rx_samps) =3D=3D 2) // Aborting
break;
total_samples +=3D num_rx_samps;

switch (md.error_code) { //handle the error codes
case uhd::rx_metadata_t::ERROR_CODE_NONE:
break;
case uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:
// The data may not start flowing for a while after we come up
// However, after we get the first samples, there should never
// be a timeout. Even at the lowest sample rate of 200 kHz,
// we expect to get plenty of samples during the 0.1 timeout
if (!waiting_for_first_samples)
LOG_WARN("Timeout on ch {} at {:10.2}s, last_report at {:10.2}s",
ch, tw[ch].current_time, tw[ch].prev_report_time);
break;
case uhd::rx_metadata_t::ERROR_CODE_OVERFLOW:
overflows[ch] ++;
LOG_WARN("Overflow on ch {} at {:10.2}s, last_report at {:10.2}s. Total {}"=
,
ch, tw[ch].current_time, tw[ch].prev_report_time, overflows[ch]);
LOG_WARN("total {}, rx {}", total_samples, num_rx_samps);
break;
default:
LOG_ERROR("Got error code on ch {} {:#x}:{}, exiting loop...",
ch, md.error_code, md.strerror());
stop =3D true;
break;
}

if (num_rx_samps !=3D 0) // got some samples
waiting_for_first_samples =3D false;
}
---------------------

--_000_SJ0PR09MB912650439B1EAA173D62A6EBECE72SJ0PR09MB9126namp_
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
Using UHD4.6.0 on ubuntu 22.04 with X310 (same issue on N320).&nbsp; Using =
a custom C++ UHD application.&nbsp; The stream start command is timed (abou=
t 30s in the future).</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);" class=3D"elementToProof">
size_t num_rx_samps =3D rx_stream-&gt;recv(buf, len, md, 0.1);</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
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
As expected, I get a bunch of CODE_TIMEOUT while waiting for the stream to =
start.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
About every 3rd time the very non-TIMEOUT response I get is zero-length wit=
h the md.error_code set to OVERFLOW.&nbsp; This seems like a UHD error =97 =
how could it have overflowed without sending me any samples?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
----------------</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
uhd::rx_metadata_t md;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
bool waiting_for_first_samples =3D true;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOU=
S);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
stream_cmd.stream_now =3D false;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
stream_cmd.time_spec =3D uhd::time_spec_t(start_time_s, 0.0);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
rx_stream-&gt;issue_stream_cmd(stream_cmd);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
auto len =3D rx_stream-&gt;get_max_num_samps();</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
zmq_sample_t buf[len];&nbsp;// NOLINT</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
uint64_t total_samples =3D 0;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
while&nbsp;(!stop){</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
size_t num_rx_samps =3D rx_stream-&gt;recv(buf, len, md, 0.1);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
if&nbsp;(cbuf-&gt;enqueue(buf, num_rx_samps) =3D=3D 2)&nbsp;// Aborting</di=
v>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
break;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
total_samples +=3D num_rx_samps;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
switch&nbsp;(md.error_code) {&nbsp;//handle the error codes</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
case uhd::rx_metadata_t::ERROR_CODE_NONE:</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
break;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
case uhd::rx_metadata_t::ERROR_CODE_TIMEOUT:</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
// The data may not start flowing for a while after we come up</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
// However, after we get the first samples, there should never</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
// be a timeout. Even at the lowest sample rate of 200 kHz,</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
// we expect to get plenty of samples during the 0.1 timeout</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
if&nbsp;(!waiting_for_first_samples)</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
LOG_WARN(&quot;Timeout on ch {} at {:10.2}s, last_report at {:10.2}s&quot;,=
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
ch, tw[ch].current_time, tw[ch].prev_report_time);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
break;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
case uhd::rx_metadata_t::ERROR_CODE_OVERFLOW:</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
overflows[ch] ++;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
LOG_WARN(&quot;Overflow on ch {} at {:10.2}s, last_report at {:10.2}s. Tota=
l {}&quot;,</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
ch, tw[ch].current_time, tw[ch].prev_report_time, overflows[ch]);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
LOG_WARN(&quot;total {}, rx {}&quot;, total_samples, num_rx_samps);</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
break;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
default:</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
LOG_ERROR(&quot;Got error code on ch {} {:#x}:{}, exiting loop...&quot;,</d=
iv>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
ch, md.error_code, md.strerror());</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
stop =3D true;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
break;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
}</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
<br>
</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
if&nbsp;(num_rx_samps !=3D 0)&nbsp;// got some samples</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
waiting_for_first_samples =3D false;</div>
<div style=3D"line-height: 19px; font-family: Aptos, Aptos_EmbeddedFont, Ap=
tos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: =
rgb(0, 0, 0);">
}</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
---------------------</div>
</body>
</html>

--_000_SJ0PR09MB912650439B1EAA173D62A6EBECE72SJ0PR09MB9126namp_--

--===============7477558218383283163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7477558218383283163==--
