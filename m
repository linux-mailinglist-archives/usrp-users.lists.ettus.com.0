Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMrUOuTk+mm3TwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 08:51:16 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC4F4D6CE8
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 08:51:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C0AE38B327
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2026 02:51:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778050274; bh=jq7UOQgPKS5RdoAFeIfSedhxl5o0XvxHRoYU8MZww4U=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ni9coXzdPetYX/0+BHvfgxJBqT1GFylV2hpqxnS78A+/FR7nfs5fu0ntIe38JpTs4
	 kr2arIhLtp4e8v7v1b+i6HKy4ecCAY09XNMofyBUUW3WZAlEmj9XdEgiGmuzrrxYPV
	 jRT4zOnhsRKtyy8PBFEcc3Yp7HQRMjX4xXBkOw/Vaw4mCdXH+QE25PFehOCyv74oz+
	 flR4PN8iJSO53cMCk5Uv7RgsDr3mm3c/q9p1N9nRMSbQ0NPfl/6D9v+/5jUYpPXjD6
	 x74KrAviFpyVwOnWFWGTT/5bPlfkkYjhkrs/jKfq6h2FrdauYHiDlO/2Gdv/Tch7OF
	 MSeN6OCgwUFHg==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 9288438B2BC
	for <usrp-users@lists.ettus.com>; Wed,  6 May 2026 02:51:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="4TMmDYdr";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="0GaV8hDp";
	dkim-atps=neutral
Received: from pps.filterd (m0484884.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6463xrRx2737010
	for <usrp-users@lists.ettus.com>; Wed, 6 May 2026 06:50:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=CrY4nuvSwXMIdUVl1FMhRd0S/gZS
	WHYdVQQHhRLOB1Q=; b=4TMmDYdrSi2rDBcWIYnudV3h2NFaAYl9NIIx9VLLvH44
	/hiGSraWXIAxpARn2W1fiKX3jicR1iukrWKeg8h7tVILPYGKGCmpDj8fGLfuH1Q5
	/o7VHxI9s6BvnmMaT7RK+6xfdd59ipcHBVB5HzgN6JXnJkcLNFIonkV74bweeQZ3
	g49JafKlHrMOwlFO9YT9c5cjBkY2KFrCVKTXd/7Z3WfbxcGkBUfEgGvRa9oZ5VFP
	1mEtJ18zF2FHsqWwcvkloPmzy4QkCFHE4q4LDtoL+auIE1XGyPpFDp9Uksc9r2J5
	RlH7+ssZP9pPU/QaNI6aUZ+0EG35XZeWKl7vyn7+Dg==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011065.outbound.protection.outlook.com [52.101.62.65])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4dynds4ggb-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 06 May 2026 06:50:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aIVGX8ITDv3j3wD/ZTVNWKuvZfUpPF+H6B37dqI1+lanmAYFgjKL1YVuK3Eez44IP94I6bvqGoa0i0neeHd0oGf8zBbL0pmaFvcld63FtatkUhQTPeVYrxlNt8MTLxUWHmayfrfMVTTttg0lv/cnn2RXUPKtL0CepKe7NlawAS5US2FIbZZjUwEaY0qmm0KdjkzksXKdmkcb+Cp8VaYcnIlVS/aih8gDcjrZ+tdlPlHjv4atWUU8NCiJZd4a6aRnGw+TqlelQGIf/iGjFvPNt2y4+X9mJySfPu5Bn6MVG7VLaZQrdKNb9Z3hg5yGWEe3u0iUsmFGnaPRAVFSGsLsCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdgGpsDKqFIqxoil0As9i+lnVdoGuvz676O+GCJYKxo=;
 b=sDJbdnfozJZo56FCjFXkCBHPqDlKSRi2BtDY7UwYlyUzG86KLI/yMbNMNzOmH93oRoCBzZuqbE89TCnoHRpq+eHnhXjvENkgqIflSyAe0Jcm9fsK5J+TaVLe7gSvKJee9rVKB9ReWyBQ7FU9qqoKUmkKgMyQehz3j64eK96wSpoZqu7AbBvNI7arNNQYgLx17xdt17iY3i6t26Pi+RE6hNMkP85gYx2+jYNaziLAfQhlOSVyChXBH9lXXAodNHfBHAFsqn6o5jSh1cE+F5svgLBBsSTqvOid9KTgg6q5mjS5boJ5snpbm2ATKMR4aHX4J33Mlxr14OOKPTQBYn9G7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdgGpsDKqFIqxoil0As9i+lnVdoGuvz676O+GCJYKxo=;
 b=0GaV8hDpoICOdZxNGHg6Q0jd+HKYgso6lH9aWyppKsNEkLhxZQgAtouBwBL+09S5XXyjKH+WBIgGdcJ/9xDt1Lwy80pIwcrIYcuF+r0cvbDgFKdp8woJaSgeUsjHnI4VX6LChD00luQVOKN59hgxseB1QYEzCJugmGUqdkPE4Q660iOLgf6o7+sZfxUpmKWTPN6lWK2AVFSV7MuoL4bDU/BVVkEFFuqTN30zy8uiLQs9/z+5eTpwH+3r91YXkD8hpTtYZkxVRwdc6xx2wSk4+OhVwHfjN/IlFFXSEy9V3wAiVSs+o00hjZEq5A2WD7oa8qCAVzQlEcS4SuBKFgmfCQ==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by DS0PR10MB8126.namprd10.prod.outlook.com (2603:10b6:8:1fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 06:50:57 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 06:50:57 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFSoC ADC Calibration Initialization
Thread-Index: AQHc3SSwcZPZsYJKY02Uu8WB/G3iMw==
Date: Wed, 6 May 2026 06:50:57 +0000
Message-ID: 
 <CH0PR10MB51796A03EDEC29873E45D8FE993F2@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <CAEXYVK4X6cv5zOd_9VjEpz-VvAq-BzLhOCBZHsy9kSzTE73cRA@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK4X6cv5zOd_9VjEpz-VvAq-BzLhOCBZHsy9kSzTE73cRA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=4ee0a866-f6f0-4e77-ba7f-e52403c57c20;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2026-05-06T06:50:08Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|DS0PR10MB8126:EE_
x-ms-office365-filtering-correlation-id: e168335f-2d42-46de-8f89-08deab3bd36f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: 
 bepvMRo2TlgFma8MhyqPsoxPIakvgK0U7cF2hchX1i9XtNFZpF6sJ4HTfCKvULYl8IHAnLUmg6l2ykEPvxcwnvAlrLRSxd+UwQkupmwCqVWoVa4QtzKQnSgRmcgAJ8S6mroCcXTNoJSN5MM6p3/sqEdFAtsIVMaX+f9xWH6eoIeKv25xCr+mZ9EAdVZY4zoZc2SVJkVgdUcqbNgH1kiAK+7YwjF/f6XlRqZ2Rq/jyTdK+T9JCSeJKxPu55cV7TK6xEWj1aQFyilZG2fPCfSTJYAfSlqA0kIHO2sTNCVjbt9HSxs7+CdfihCm/wnMw/A8Jcy4jPoSeRzQlPSD7sg1+5OI7uPPMPvEZ5aAXc6WzfxqQvt6ZwDfxASEfUy3KXYOuMf9cfY9DqNzN2iqY4CqfnpE/S8irM4vk9G+mVYLvURr5vNUd4gEsaThs2lsRz5cKFtEQWhAzb94xVGjQikh7lBISnPVrKwvkt+ac2ORu33FMlQA58Aywy3WzNpTp8Z46wAO4G8LjRiJ3pLGmiRlv/3GxFGBYeMPQ6kE3vtdZuORGzwWPoVKXoEStefo/vaDxPgRC+x8N08evjpiu5GOvvBwPkg+XhezIA9DNJXfR5Gb9INDcJGGySDkaqMA44Y2D0v4u57VkG/SZFG91fVqUzVtyaUv/IETOZ4s5njejvcOCmufqVRcRZQxc/K/JQzKS6hbuzc1YfoW4cxHb7oznw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZDlpT1h2bjhpamFTV080R2tLZHJrd2l5Um1OUFJrZjZ6R3lQWHRBT25KejhN?=
 =?utf-8?B?ZHYwUXp2R2R6REdFUSs4OUFjQVNZQUxGb3RHRjFXOWJRekxwRHNMSlNhaXZh?=
 =?utf-8?B?MFlqbW5uL1dZRGxaemUxUmZBbmtxaU9aTU1SZlRwVVVqT3BnQjkrWjFlUGRV?=
 =?utf-8?B?THExY0hTd2toejBuSXpldllKTlNOdVJLRXFmY3BzbS8yVElibEJUNkYwSTFK?=
 =?utf-8?B?RHh4YXI2eiszRTJIR3c0T0VEd0J2ak9vRGR1MGZqemdWbVl1c2NXRTlnVGtv?=
 =?utf-8?B?TnZadFE0bDdrSGFtMWVQUVdRRnA2a25TbGxTZDRFL1Fad0cxV3I3MloydTRs?=
 =?utf-8?B?RFVkTC9KSXJDd3FLZGlwWC8vS1ZXMllhckJnNlNBQ2tLeWwyYmwvUVdBWWdM?=
 =?utf-8?B?a3dhQklpaGVuNGJDZ1hQMFFJNUpmL1JQQXRpRlRPVGVMa3pDY1VaNXVYQTJt?=
 =?utf-8?B?dnc2RnB6UDJ1MElVVzV6dVFvNmFqNHh6YUJsN1BwcXdidEl3djFaUlRwZ0Fj?=
 =?utf-8?B?T2cwbythb3djRTM2ZWczZyswY0R5aGYrZHhZeWlpQjc3OGY1SFp4YUV2YS9B?=
 =?utf-8?B?bmJjd0RNcHJ1WXpTUlMwNUZ6bWhnV0cyUitoWERwT1YyT2I3bWpuMkU4OHFs?=
 =?utf-8?B?MmpCbU9rZnpPTWwrOTlYdkxpSXVpaWRqU0dSWUZ5RVo2MHhVMmthNUFsZllP?=
 =?utf-8?B?dUI5eDNoS0NwVG9RSnNkMmFTVUdKalFNd1N6ZkFvWExrTjJIOVlUT0UwaWZu?=
 =?utf-8?B?azg5V01UZlRRZUIzT2tkV0tQUkVZdGYrS2JvSy90S0lsaTRWaE8zVUpTZGFh?=
 =?utf-8?B?R3B3V0tuQ1ZDLzFkeXRha1E5NXNFdEovcVc3aUhSQ1pHaDlJVWNGbW1kS0U2?=
 =?utf-8?B?YlAxZ0thVTg4WGIzdEJWbTF6d3N5SnlKVi9CU015aVNBRytOdklBZkFnTWJj?=
 =?utf-8?B?QitoVlpYdFlPNmJaZlJuNWdySjNDcFhLT0tZK2J0SDRxM2xzdDM4YVdSbllY?=
 =?utf-8?B?ZEg2NythVE9oRVJqRFgxMXNQWDRnYUNFandaV2VTVXZmc1B5Sms1UExxSklr?=
 =?utf-8?B?MThtemNYNUxKWmkrM085cFp5VjM3OGtJL2lEaEFjbEcveGNRS3ducXR3S2d6?=
 =?utf-8?B?bUpZOXBxQkxUSnBSZGZhdnJRQ0lGTmNOM3E0WjNNc21RdW1TdE13WURIZ1Q1?=
 =?utf-8?B?Qld1SnF0UTBlRDl4cHo3WUpGVGhSWFZXWFJFRHdBdUQ2empqWDFJRzZwRlpD?=
 =?utf-8?B?ajlnL0JSYjdVYTRDb0NhUUo1RnFMZHpOeVhZV1hZaWVSY0p6QVZxU2pZdy9G?=
 =?utf-8?B?YWoyaGVhdGJUUEkzcW85WDBPQmtIMWdIc3JRRE13bXZybDJHNW55N1FHalJh?=
 =?utf-8?B?aUFhT203TEZETDRTUjM4RUt0djhUemlwUHJ6M0VacjNiRGdPejQ3UHE0alZI?=
 =?utf-8?B?cVM4ZGY4WG91d2MxblJTbW1hUTJTZSs1anlRVEJiVXZMUGhFRGVka2RZZEt6?=
 =?utf-8?B?UFBQa3ltcklpcTRWTUtRelowVU0zVXo5bGZKZlBKa0FEeDNnaUMxOFBvbGdU?=
 =?utf-8?B?MzlXcmhEMlBUOHZqTTBVWFh2dWF0M2tkMXdhbUo4bkdZazQ5RFYvZE5XMUxU?=
 =?utf-8?B?TFNjTE9rY04yMFc3TnBQNFNiSDVLSndlbUY2a1d5TWZNU0YvWjRpc09GOWx6?=
 =?utf-8?B?SGZ6ajBqay9hWXBlVnFMckd0VWFZOVNuZDJPQTh3R24zOG5OYlBzb2Ewdmc4?=
 =?utf-8?B?bjZKTm1GY3dJUjdaTUlKdTVPZkZPN1JkRlR0YzlZb0sxbkN1dktDaDd5UTRz?=
 =?utf-8?B?VnlieC9QYkxYZGxveGpzNFRZVTNLYVVpaEY4dHhncm1vSzFzS2twb1VVZ3RL?=
 =?utf-8?B?RTEzcUxhVHhibU1sN1VYK3pGUXloYXcycHh4MXRrUDh1VXlUVDMydUt5cWlw?=
 =?utf-8?B?Y0RUZDk4U0hIU1U4TGdycXlMMnZ4TWlZR0p4VnlBSitIcndxeGkvNUpSUDJX?=
 =?utf-8?B?Y0NwOWJNR2d1U0xoV2QzT3JUdWZUL0Jkd25SbGRIUERGMWFaclhqT0Q2a25h?=
 =?utf-8?B?SmZReFFmY1djb1g0RmFQd1loWk1GYnhFQnRQUkU1U0h2M2dmbS90RDFleU03?=
 =?utf-8?B?TGM2U1dYZzhjME4vdzZ2aTJJSk5ERjJ4TVV0TzVFTmpCdmRZY3dOWHE3VEIv?=
 =?utf-8?B?aWt6dW5yVVhzN0F6MjdVL1djNGtFRlJKS09yN0J3Mjg3RHB5NDVUb0VpbW1j?=
 =?utf-8?B?Y0VhNmh1elhqTHlwOGpHNTdackMvZmFsTlgrUmFjMTVOd1Z2Q2o3R2ZKZmpo?=
 =?utf-8?B?Z3U4T0cvOGROQW1OT3VBeXJOOEdBQkJrbERRUzQ2b2VnTlV0WEZlQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	UpoKOL1enoCHH4fRdcSvlAjXNDoYSZkQDi+b0gBcHP50h83bvuymEEN9l6Xw7ORfNgMXMoIF+XROF3kGLytoibKYfBranTQUr0KGlWfWHKUarmjUKIzCFoTZ6anyJ7hyz3qCZ31U7rRV6QM+t660wWh2mrYziQjALiray17DXPx9D8wkDI/Zzx8fA4CfIEaXCgRbEU5DHoQmVu6QWEfSrlYnQ1nq2jiwrLUbic0tIaVFvLItvMln/ns6LJZO1LXtbafWCZj90RcSvVMxyK5Jb1UOG4pjxPQQBzGVXqWombYp8HxShczDjBqcl+JLyXwp+GYnsvFKeXBXCSi3uFHw2w==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e168335f-2d42-46de-8f89-08deab3bd36f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 06:50:57.1453
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 009Sts2j6RJmR+g/CRoedsDPythQcmX2GJoqCwDM3bFqzmSnFq4lg4e33xFlqiE+muMCMwqzbZ0tQIod8oFzQSh0b9Pm6nvRMnoA2JEc93g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8126
X-Proofpoint-GUID: td0KWmiONbY7AyO-80UKzb0341SU3nhu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDA2NSBTYWx0ZWRfX2cP/dSfi5DL5
 5+wlp8ZGKiSUANYZ6Fo+UesSz0sHjxCuyk8gCD0ChtH+hP7cz4/tQDmAxL76dSt/YGYuxJYLuH4
 FqL+9ky5H2vGJjTxGrl2wbz4ShDHw7x/yb5Eohf0LMkSbp5EVyfp+iH+agsCWYhg1lX4Rd1E0Wo
 MNaDH3d5Yl5rjrgQmkqgxSmvL0XBve+fN9pc98HR3ZLm3ciV3uIo48NmryOCqEo4q5Mh4CTZ3/9
 WZ66w9j7yKzcYlEzEA3k2blj1Wlrtl4qGEHnCA4pNHhyIQ0HSUjwlpApE41HQUdmMN7AcQ4BS3s
 ByGQS3JvbtZZ2RGIbBAkqy353wJYmrPtVZuYCF0dyxR09oLjzNxqlUv0jBLY4JQdynN/MMXunJs
 4s4J6c3ps9R2y5ixJR1p3zJEQiDzogXq+Vl4C7rjbnqC5oICU98pZ0GCWceREodJoI9LcyKVh2j
 HkcelDdTXJavP61zi4w==
X-Proofpoint-ORIG-GUID: td0KWmiONbY7AyO-80UKzb0341SU3nhu
X-Authority-Analysis: v=2.4 cv=bb9bluPB c=1 sm=1 tr=0 ts=69fae4d3 cx=c_pps
 a=BToDjy1G2hQwEUS1Uhc31g==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=NGcC8JguVDcA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=amQ93Wefht2Ng08MFDbD:22 a=etiEgX_XAAAA:8 a=RpNjiQI2AAAA:8 a=pGLkceISAAAA:8
 a=LY06Bj0s1nkwKa0IIsoA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
 a=cR-YsGe21EK0iHn3fE8A:9 a=Pd1Tg5FNxI88nf-e:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 impostorscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605060065
Message-ID-Hash: XVHU4G2I5LL5474ZBHEHEXAFND7R2B6Q
X-Message-ID-Hash: XVHU4G2I5LL5474ZBHEHEXAFND7R2B6Q
X-MailFrom: prvs=6586a1a40b=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFSoC ADC Calibration Initialization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVXY4PPNDAE5UOT3OS2CJHVD52HFYPT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============9089896956834060434=="
X-Rspamd-Queue-Id: 0BC4F4D6CE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	TO_EQ_FROM(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[martin.anderseck@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.658];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:url,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============9089896956834060434==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB51796A03EDEC29873E45D8FE993F2CH0PR10MB5179namp_"

--_000_CH0PR10MB51796A03EDEC29873E45D8FE993F2CH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As Chris mentioned already, usually this error occurs if something is wrong=
 with the signal path which leads to unexpected high resistance. You should=
 see a difference between a good and a bad channel in terms of received pow=
er if you compare them, too. In X440, the error message that mentions gains=
 may be a bit misleading as we don=E2=80=99t have any gains =E2=80=93 it=E2=
=80=99s shared code between all X4xx devices. However, we still check if we=
 reach a certain threshold level as otherwise the whole ADC self-cal (in PG=
269 this is what they call the background cal) doesn=E2=80=99t make sense.

Since you=E2=80=99ve checked PG269, let me give you a bit more context than=
 what we provide in the manual already: https://files.ettus.com/manual/page=
_usrp_x4xx.html#x4xx_adc_self_cal

The overall self-calibration of our X4xx devices builds on top of what Xili=
nx calls the foreground calibration and the background calibration. When th=
e device (and with this, MPM on the device) start up, the converters get st=
arted, too. During the converter start the foreground calibration runs auto=
matically. During that stage, no power should be connected to the converter=
. We switch the converter away from the RF input by default but still advis=
e to not connect any signal during that time. Then our device is basically =
ready to be used. As soon as you open the first UHD session you will see th=
e ADC self-cal running. As stated earlier, this translates to the backgroun=
d calibration in Xilinx=E2=80=99 terminology. It is called background cal b=
ecause ideally it would be running constantly and only be frozen if we drop=
 below -40 dBFS. Since we are an SDR and thus do not know the input signal =
well enough/don=E2=80=99t have the capacity to monitor the signal constantl=
y, we decided to go with the training signal approach. We use the loopback =
path to play the cal mux signal from the DAC into the ADC for two seconds, =
then freeze the calibration. Tests have shown that this produces a decent R=
F performance afterwards.

Although those explanations may not fix the presumably broken channel, I st=
ill hope that helped for understanding the methodology better.

/Martin

From: Brian Padalino <bpadalino@gmail.com>
Sent: Tuesday, May 5, 2026 7:46 PM
To: USRP-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] X440 RFSoC ADC Calibration Initialization



I recently had an issue where the initialization of UHD ended up erroring o=
ut with "Could not find appropriate gain for performing ADC self cal". Read=
ing through the code, it seemed like some strong input signal is tripping a=
 threshold register and causing initial calibration to fail?

When reading through PG269 about the data converters, there are a few menti=
ons about conditions for calibration especially regarding the freeze pins o=
n the converter. Specifically:

"Input signal contents at Fs/N, where N =3D 8 and 4 for the Dual and Quad R=
F-ADC tile respectively, must be muted during foreground calibration of OCB=
2. The signal component at the k*Fs/N bins should be less than -95 dBFs."

"Gain and Time Skew calibration blocks (GCB, TSCB) should be put in freeze =
mode when the input signal drops below -40 dBFs level for longer than 100 =
=CE=BCs."

"For applicable systems, a training signal can also be used to calibrate th=
e GCB and TSCB before switching the system to real time operation."

I noticed in the BD that the freeze pins aren't connected to anything. Is t=
here any guidance you can give with the X440 in a deployed system where it'=
s connected to an antenna? Are there any internal switches to disconnect th=
e RF ports for initialization or is this something that needs to happen som=
ewhere else?

Also, any guidance on signals below -40 dBFS for longer than 100 us? Are th=
ere options in UHD to handle this a little better?

Lastly, any guidance on the initial error happening regarding the ADC self =
cal would be appreciated. Have you seen this happen sporadically or is it p=
retty well known the conditions that this will happen?

Thanks,
Brian

--_000_CH0PR10MB51796A03EDEC29873E45D8FE993F2CH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">As Chris mentioned already, usually this error occurs if something is=
 wrong with the signal path which leads to unexpected high resistance. You =
should see a difference between a good
 and a bad channel in terms of received power if you compare them, too. In =
X440, the error message that mentions gains may be a bit misleading as we d=
on=E2=80=99t have any gains =E2=80=93 it=E2=80=99s shared code between all =
X4xx devices. However, we still check if we reach a certain
 threshold level as otherwise the whole ADC self-cal (in PG269 this is what=
 they call the background cal) doesn=E2=80=99t make sense.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Since you=E2=80=99ve checked PG269, let me give you a bit more contex=
t than what we provide in the manual already:
<a href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self=
_cal">https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">The overall self-calibration of our X4xx devices builds on top of wha=
t Xilinx calls the foreground calibration and the background calibration. W=
hen the device (and with this, MPM on
 the device) start up, the converters get started, too. During the converte=
r start the foreground calibration runs automatically. During that stage, n=
o power should be connected to the converter. We switch the converter away =
from the RF input by default but
 still advise to not connect any signal during that time. Then our device i=
s basically ready to be used. As soon as you open the first UHD session you=
 will see the ADC self-cal running. As stated earlier, this translates to t=
he background calibration in Xilinx=E2=80=99
 terminology. It is called background cal because ideally it would be runni=
ng constantly and only be frozen if we drop below -40 dBFS. Since we are an=
 SDR and thus do not know the input signal well enough/don=E2=80=99t have t=
he capacity to monitor the signal constantly,
 we decided to go with the training signal approach. We use the loopback pa=
th to play the cal mux signal from the DAC into the ADC for two seconds, th=
en freeze the calibration. Tests have shown that this produces a decent RF =
performance afterwards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Although those explanations may not fix the presumably broken channel=
, I still hope that helped for understanding the methodology better.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Brian Padalino &lt;bpadalino@gmail.com&gt;
<br>
<b>Sent:</b> Tuesday, May 5, 2026 7:46 PM<br>
<b>To:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] X440 RFSoC ADC Calibration Initiali=
zation<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal">I recently had an issue where the initialization of =
UHD ended up erroring out with &quot;Could not find appropriate gain for pe=
rforming ADC self cal&quot;. Reading through the code, it seemed like some =
strong input signal is tripping a threshold
 register and causing initial calibration to fail?<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">When reading through PG269 about the data converters=
, there are a few mentions about conditions for calibration especially rega=
rding the freeze pins on the converter. Specifically:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&quot;Input signal contents at Fs/N, where N =3D 8 a=
nd 4 for the Dual and Quad RF-ADC tile respectively, must be muted during f=
oreground calibration of OCB2. The signal component at the k*Fs/N bins shou=
ld be less than -95 dBFs.&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&quot;Gain and Time Skew calibration blocks (GCB, TS=
CB) should be put in freeze mode when the input signal drops below -40 dBFs=
 level for longer than 100 =CE=BCs.&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&quot;For applicable systems, a training signal can =
also be used to calibrate the GCB and TSCB before switching the system to r=
eal time operation.&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I noticed in the BD that the freeze pins aren't conn=
ected to anything. Is there any guidance you can give with the X440 in a de=
ployed system where it's connected to an antenna? Are there any internal sw=
itches to disconnect the RF ports
 for initialization or is this something that needs to happen somewhere els=
e?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Also, any guidance on signals below -40 dBFS for lon=
ger than 100 us? Are there options in UHD to handle this a little better?<o=
:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Lastly, any guidance on the initial error happening =
regarding the ADC self cal would be appreciated. Have you seen this happen =
sporadically or is it pretty well known the conditions that this will happe=
n?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Brian<o:p></o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB51796A03EDEC29873E45D8FE993F2CH0PR10MB5179namp_--

--===============9089896956834060434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9089896956834060434==--
