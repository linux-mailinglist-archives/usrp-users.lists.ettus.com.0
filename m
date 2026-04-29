Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMQoK1nj8WlZlAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 12:54:17 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CD9493389
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 12:54:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6577738B9AF
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2026 06:54:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777460052; bh=U7UVrBoSINbhwPXLo1KO8NCRjpjbQUS7WpXUV+YHebs=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=r6EmkE5caxb28XpmoB5BKdldLaRBlED1EQj8cLEEioJpAlzQ/RjGQD9kVZd10a+5K
	 hNqyzIKMb4xTdJzx0ABLm9zcVGulcsNh+EwnnhgtInskOKdCUGGlesneWn9jxSVoPf
	 mYtZg0vjzNaKKgEATWV0JnHm6HhK3kyHdl9qM7RgzYH3+Ff5Rm56/85X60QAuioy9a
	 s4azPwnVokdK6hhso9XtFtuX+GHWh3mFwR/06fbfU5SLwxUpCcrGTzt6Ay2IUAJGWQ
	 WdxjnmUT+7kE07e59S5Xb0lexucORdSLOQjLhiaHeDSWQ1oemhuPIGeuogu96AdqfI
	 G90XiwbXloORw==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B9293854C4
	for <usrp-users@lists.ettus.com>; Wed, 29 Apr 2026 06:52:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="qjIwtdBU";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="iUdjO4Oz";
	dkim-atps=neutral
Received: from pps.filterd (m0484887.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63T3a2QV1158572;
	Wed, 29 Apr 2026 10:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=p355LTyFFT6twnC2XBBRnFOFW4ie
	eaL+66oduPZnZtk=; b=qjIwtdBU6DMVk/fkr1sePlRiM9cHDL1kSPENmrdSI2v4
	rhqSzQng8ywfBBIWb+hWuAVPfmuEq4N7GdtVnC3NcwV/29pm0yaSyVUirvl7an3I
	wxCNDpFqKVYl9spCLNnmw1WOgHH8fOseMsiORXGK8X1egQ81G0YcdBH0Tg325OKA
	1kxDqlgVzWBMuMbQa0h+KBDp0L02SlI+//Z1TaGLTw383okgFcEVq1lnJ4k1h3rr
	/sJsjcKw6wLzAR3xpP4UzV7WD3vyzDKdny3erUdRlyqoE2xC0WlU7P8RZnIk5JzF
	o5G6jsNEer3DC3lSkeDmnV8k+dk6z1a0DahGPdItzg==
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11012004.outbound.protection.outlook.com [40.93.195.4])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4dtuwa1vbc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 29 Apr 2026 10:52:48 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5b1RWJ1oDeLAqOFL1OkVqxBI3NMLARIHyGT0U3hBo6wu6wsXD14WlI/IYck217ynOs9EQm2CYJOUh7whpJahI5Fre2RQe7Gm4So5lt1q7vzeD6xN7pIBsQhKlGMYO/HrhRDXkQbIp75LQcTY3qdEvB9AcP/DDq5k1fD04eYShLavILzgdUp0aAVSlmtKkuc5dWEl/HWfCh7d+mBr9wzUQGle9gGHw9C47ly+hEyHjOySoeD8wDVY8Z8ijyBQBb3Ni8cXBSAV+btdXWHVUYYMfNgQK2H5zlvS2xhoKwfL8tK9Rk/4nGuRe9TLA+LpMjLba09DmoIzU7LeEAILu0QGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uaAU0Atz6TyAwYaEDgRRqNl4KXZk3Uy45UcbVUBYltQ=;
 b=XAyaudvhBaDOpKnt9/t97s5vvlVlO5DqgNxiF/37cEFu2qxNZ9aZoYaAu+GiPHpBN2CaxlK1Eq9T3fofT+SoSuPgvvS1lSDTn1Acvu5f5K3+eDKuvKXJTtYnSWu1ply6f9vckZNzrkpuyuErNQbwkyBKw6ltDA2IPTa8GtDkuFmCgNh03z4uSkC8npkYmtFZ46nIHSYkE7cJLgXEWCzqGUW/lWEvPOKKwItKYFdULd8/im+BSeb3T/KHz+a9+RfiYg18i1+ZC2PaQlCGIKEbUnfplE7GFUPx0StYZCH/WvipaX70t3myHMiKR8aHaOcF/SLSpdxJ2oWcSfG9fmZuhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uaAU0Atz6TyAwYaEDgRRqNl4KXZk3Uy45UcbVUBYltQ=;
 b=iUdjO4OzZ+dHhvjmBJSGIRQYTcqvXPCAH8MNw1pO7DJtdJDjvbHGfc+6MlA+TDS28Ykqtue+t6WraDqnDNOnfoAAmKH9I9qltF/rTgzOkPu2yaZcNPRwVTYEjVyWyNz7N+Wp3iDsnqz3tfVoPaWlFzYD4iKhdp3J7J7iMqofG+KAw6x1lYZx3C7TOQOtmZ1pUfpMNu6aKr/6dsb1Q3ut/WMYWTCVl1cz70BQ7PDvSaXbZmPQn/G0XvRXKLYQNmVXze9SdgVk8RVlyl89QmQQynRjPMPU1ZS8Ywjh7tO9iQ0rmEZGs8xJ/nv/c9hLO/iqib4v6hdd9jrSBkClQRRgPw==
Received: from IA1PR10MB6781.namprd10.prod.outlook.com (2603:10b6:208:42b::9)
 by DS0PR10MB7127.namprd10.prod.outlook.com (2603:10b6:8:df::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 10:52:46 +0000
Received: from IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40]) by IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40%4]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 10:52:46 +0000
To: "Amsel, Lars" <lars.amsel@emerson.com>,
        "Jurk, Dennis"
	<dennis.jurk@hhi.fraunhofer.de>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 TRIG LabView
Thread-Index: AdzW/IbukQ14JROXRXuMEmxRA866pAAyEPhAAABeJ7A=
Date: Wed, 29 Apr 2026 10:52:46 +0000
Message-ID: 
 <IA1PR10MB6781772A7F62357D5BE6FA548C342@IA1PR10MB6781.namprd10.prod.outlook.com>
References: <2886c174218f45de8fb1b100e4b3c6d0@hhi.fraunhofer.de>
 <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
In-Reply-To: 
 <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=2857418b-4c4a-4388-ba20-4a030beb1e61;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-04-29T10:41:53Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR10MB6781:EE_|DS0PR10MB7127:EE_
x-ms-office365-filtering-correlation-id: 4c6d1173-6528-4934-f2e0-08dea5dd72b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|22082099003|18002099003|38070700021|8096899003|56012099003|13003099007;
x-microsoft-antispam-message-info: 
 jyaTdJiFZiBHo2jlAJOTZ+mso/E40TbHKthPdnDyEMjCiVQYTClYQBxnP1fg6uoaWHU0oIOtDXy3IStpRr2s8JplvilgkK9slcXq2pa5z7zsMXN9RNPi7zAA2vtzF+G0b9CEU1okUx4X1YSmNCQK3RSDcKCyg4QJxV7SXZ/6w6doyAzBmep14VrERSsAWeiNtj3ERxHtA0LBrvUfd/7cd1qHB9q0pkBJANwq4XXnyH/mHKTs12j+aGhNrbLbtAlA/nOaOI0mPh51LxpiVBnjU5Nvb3pZVtUYtLZHWJY8ayaS1L5k7PXGVCn2kFQw4yCouqgPjgNNSbSEFWkulzin/KCK6eM9mCoOM1EL5enpTXEd6LTV9/50rsEI2fgZd8pWS73g/pkXgGX1OsvVlYQPvQoyi5YwYIHVevaXTcBegVAJ0dcAWrx6g2GxIvfHiJ5IBdoC53vwo8nA+td4uNh+m+X3ZPLl4muBz/dZWqpyjjjnozt+niohcncfbxVlwlLOmSS2uokU7WiInDOCUCnK7j5gWvC/HxnqyUiMcdJKROz0tpenTAgThMDaH38hwubYAAXOK3t6464lScFbCNiKFCfoNr+Yuq6gheQlJaf0O9yME7T4D/mMqgrjLeVguwauIh1NVuufhU4+pFEj3+zpIM3afmGdRTL3rt4BRRpuSIpw53V3v4+MYoO3pQQ/OFhh2TSPjqDAMm7hUKAXJjvHlIi+5BbIxe//YQVBJDXBuvp03SdBZ8rn3oXsC60mvc2i
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6781.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(38070700021)(8096899003)(56012099003)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?R0t5cmVFUUFkc0V1YmlRYWxQQ0dpeGxER2RmTVBJNWpoOHZoejVMbkxUMEht?=
 =?utf-8?B?SklDeEhMRWkxQ09YU3hNUjFMK0ViYjFnejJNYnNpQkgyYTRwV2kwcXpDbkta?=
 =?utf-8?B?ZW9tcm0zNXN6eGZHZGMvSDFXUEhaMVdTZlRUenVmTEpIVG5oYzZ5NkRDR3Zj?=
 =?utf-8?B?YWlaRGxLL1MvcU1SYUo4ZFpSa2ZXaWtCeHZ4WDM0dzY5RHlkUjM1dlRoZVI3?=
 =?utf-8?B?UERWODdpL3NNMklpYm9tTEpIZWthZkR0TnUzL0FHVW5sN1o0bzFhQzJ2ZHkr?=
 =?utf-8?B?ZkcvWnQ4ek1wSXZWWlIzRXhOb0syaU1DekV4YURXOUl6ajM3QlRtYk56Ylhi?=
 =?utf-8?B?UVdBUVpSNktIMEx5QlV5ZFZpK1F6TFg1RkxtZjlVMUxZY3RydncxSjNTY0xm?=
 =?utf-8?B?WFhYQ3FpdFVmbVR3YVJvTTRyVGFFblE3bThWZ0RwQVBWWm1DN2ZHYThkK2ZS?=
 =?utf-8?B?YUx0VTFZRUdyM0l2Skl6NzRLRU9mcHFhUU1UYkRUWit0eXQ5V0kvOHgvb1Bj?=
 =?utf-8?B?UC81OElBbEQzV25HdHE4bmEyemo5TkZEdkUwWTVNUUFLbFVaZjB5NGF4dEk2?=
 =?utf-8?B?dTFuTVUrbjJrTXg2QnU4bUVhTlkyVTNhOGRhZmNEci83Qlphalp1MllaWVJP?=
 =?utf-8?B?bUNaajdpQ0k4aW1mQWJFK1hvdE5oSFF3WW5VaTlJWHVqQWNsK0w2dWV3bHls?=
 =?utf-8?B?dlVKYVJDalZtSXp2ZmlnMTR2QmkwRHNURTA3Y1JtbGNBRjZCNXF6c0p0Wjlq?=
 =?utf-8?B?ZHJlT2tiaHZ5RDVzVytQd016ZnJQMVYxOHZNVC9NS1NGd3BLY0lmbC9LZ216?=
 =?utf-8?B?elVLbkZkUWw3RmEyaE1zVVJJRHJHTFZrNXY1NkRRdWRCczdqNVRtcjYvL1FO?=
 =?utf-8?B?QTE0SEZNUW0zanhGRlVkdXpjNnpEdCs4VDVJbFNrR0owWEhRSGQwakRLdldM?=
 =?utf-8?B?aFMwcG1pazEyUENCU0FQSFdDL21LRjliekFNZGFPVmlyRlZaZ2tlK0lPQVNJ?=
 =?utf-8?B?d2tUKytYODRCaWRxMVdLQUpwZmxkU1FkRmJNL1ByZC9DbkNRYlJpTEhXZDRB?=
 =?utf-8?B?S3ZUN0dIckhKY2xOMSs2TWRWQ3lXVUxJclJ2VW43dWlKUXlIN3pJdWlBSk93?=
 =?utf-8?B?dFM1OFQyVmxxL0VNdTlubFc3SklrNFZ5V3ZHeExzYlFqN3JOMnZ3RVplS2Zz?=
 =?utf-8?B?WHQ3N2FhSEFuQU9ocUlUWGZpVVpzMTM3WGlVRnRucHFCNlZJMER4bFBLV3lH?=
 =?utf-8?B?YkovWkxuTjRGZG0rMHhDUmc0MXdWbE9GMVRDM0N5b2lFUXIyRVl3aTYzVzc4?=
 =?utf-8?B?TVdDVHdqaTJtUXo5Z1lRUTZvbzljeGtxZTJHSU5DVG9jZm53OFVtTGtmTW9J?=
 =?utf-8?B?c3BJZEdLTmJ5cTRlUjdCYXo5QnZjVksvSlVtUC96UmtCTWZaRkZuNVhzL05r?=
 =?utf-8?B?UGZ5dGNxd0k4NzNacXFqNWhpbXlCWWFwdDkxMWthY0UvM01JS3p1UUZZaFQv?=
 =?utf-8?B?am9RN3pRbDhxay83TFhYanhoODdYNENsYkhPYVlVOHltK2t0Zk9DVUJ5aXYw?=
 =?utf-8?B?VHZSV3piS091S1NWdzR2OGV1QW10YlpPTTJ1SjZzZUxqNi9IVjJCalZxc3Yr?=
 =?utf-8?B?SWlDSEZMVlFaWDNRdEtVbWhkSXZkL3NlUDJDb1MyUEUrL1pQVDBORXEzY0xW?=
 =?utf-8?B?Zk8vL0pJRmxVaWpYR3RqRUcxd2dIWjJCdmpncGgvSkl1VzJpWXllRmhudjFH?=
 =?utf-8?B?V3JtUzlqZU1IMGxvVzF6VFNWNFMrSEVwMjFLSTgvMGVnOHVhbWl1dnpOcXJG?=
 =?utf-8?B?N3dyN1RveldLWFI0UTdFOHU1MWp3OXdyUWhBRzRjYVN3OFd5R3VTZjU3emZy?=
 =?utf-8?B?enV2S2h2aXZpZllPUEdRRE5KajN5NHAyM0FZQys4RGdQQ3JUdFIveEM3RHlG?=
 =?utf-8?B?Y3hNdUJrSTAxb2g3dEFYTC94U1VNc0dQdXJZaUNvQThYb1R1TGYrd3lNR2ZS?=
 =?utf-8?B?cWlqdHB0MFlrWmZWSllSSThhS2EwOG9yMkRoK3NxK2FvZG1Td1RVcTFEeU1n?=
 =?utf-8?B?TXhleGNEL08rZDk2NzNHZUplUVZDc3dEaExMd1l3NDAwcmkyS2VYUUNvNWMy?=
 =?utf-8?B?WEJHNExZSkdSR1hwUEp6RUNSK2E5ZEIydTRqMjJoWForVHVnWHU3TGw4QWJo?=
 =?utf-8?B?ZzRPYytiTGRhWVV6dXduYUorZ1dzdXlaK0lRbmw5VXo2WFVsL2U2Q3BvUXFH?=
 =?utf-8?B?bERoblZ1RWlRcnNHYk1EMHRQdnpJekRZcWwwRTEvVVoxYkRCcnVpTFQ4eGRy?=
 =?utf-8?B?TXFQbXVHMXNUc3dxYVd5VkQ1OVQzUHFaRnFDQ0RwQ1VTQlBOTEZuQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	UYntnkbpU2Tlrv4hQkAv+Jlwbx15x9Deij4cBIF1acY0/gypy6TYpaWJCqAIMemy/thwm3pKMoHdl7d0VOvMJ/XE9wfK9Xm86Gdxz1p2z7gg5iVpf3tT7ZpnCBYaClCbiyGJjsWbNZhhk1/Klv7W2yrZJMLj9ej7ANgqtUroac1Abf0CZFQa5NKNP8ec54jPXRi2ATf9V32H3LislEaSMKLquc3ZJdnRMHzrB47Z/fxhZ5MJqqdLtaZa+q5rwgLudvMeMZrhn+6U6xr4Kjho+o1p01DgWAKaWYTf32XZjNOD/GxFTDCWL8XaPI4FPkYJp2HZqHg/lVTsS5g4B9D/Lg==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6781.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6d1173-6528-4934-f2e0-08dea5dd72b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 10:52:46.3975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +eG5sn3QRtzZPbc+j079ebx86f4uVJcBc1Ga3zFfOUek5ytrwVjTQB75J5CbJn/QtslyYVHUAzJZfTrs9rfhEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7127
X-Proofpoint-GUID: IbCzVN19cRiTFODsv75KUn4ACrAcQlAK
X-Proofpoint-ORIG-GUID: IbCzVN19cRiTFODsv75KUn4ACrAcQlAK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI5MDExMCBTYWx0ZWRfXwoFcNalxK8E8
 s7Qmht9gCGOGlJvN2cvNaP/9r62ZCS+pPsaPxvxBBqKB5dMkOroZwkc5HxZTwMDhTxK+md6KTQQ
 6FZJzXgh175XqL5qBZtmPac0zqZBvBE6tdv7UECyR7kklPoChGcdE6JOpuH5U6IxjoBhFDgEoWU
 ohP9nXi5T/vK54NKVG/AY/xUMH+izpE9JITXdDCQjgs8uxc+XaLbxSLCtAnyPIzadqbRiMeV0eU
 JN9OYzy6gv5We/j3OXEKkiWjrD7ZrLSyKwC720z2R/1Bmn2QS4mnD31axoUsTmypntWKWT/w5P2
 hbUdM/ptOqF8+yNIXzdmiO/SsL4hkJTvdt2b/k6AvLNJ5fec7rXacY2wY6xWxputx20dkk+UWR3
 hf0J6fUDn+/UL326X37YutdOZmqlkY4U1HGpD/0Ih9XuQzVv7qpl/VVvcTYF9eiZPs2HCd0kkwP
 K8pQtbi342F0A7GcHJQ==
X-Authority-Analysis: v=2.4 cv=avWCzyZV c=1 sm=1 tr=0 ts=69f1e301 cx=c_pps
 a=eN70jGNn7EKSdYhrfilGAg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=A5OVakUREuEA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=YzFfMDytZQSzZALhj0jU:22 a=RpNjiQI2AAAA:8 a=gVGD3344AAAA:8 a=etiEgX_XAAAA:8
 a=oQul3iIlOuiHuoASVdwA:9 a=lqcHg5cX4UMA:10 a=PRpDppDLrCsA:10
 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=YBWOnjYgnd6YQH1wcnYA:9
 a=c5B277tqPcJkWjI9:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=ImwWUX5h3JJ3gRE9moBe:22 a=xQEvYfgLW3QvObN0DhJi:22
 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_05,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604290110
Message-ID-Hash: 2IZFL3Z2WZ3NS3O52CZOL33LSBRDMFPG
X-Message-ID-Hash: 2IZFL3Z2WZ3NS3O52CZOL33LSBRDMFPG
X-MailFrom: prvs=6579798030=lars.amsel@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 TRIG LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RMXQ742BUPS4OZW5NEBYIMP3SAILBHOF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Amsel, Lars via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Amsel, Lars" <lars.amsel@emerson.com>
Content-Type: multipart/mixed; boundary="===============3298835972127552469=="
X-Rspamd-Queue-Id: 54CD9493389
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[lars.amsel@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,emerson.com:replyto,mm2.emwd.com:helo,mm2.emwd.com:rdns,fraunhofer.de:email,IA1PR10MB6781.namprd10.prod.outlook.com:mid,ni.com:url]

--===============3298835972127552469==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_IA1PR10MB6781772A7F62357D5BE6FA548C342IA1PR10MB6781namp_"

--_000_IA1PR10MB6781772A7F62357D5BE6FA548C342IA1PR10MB6781namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The last sentence misses a don=E2=80=99t =F0=9F=98=8A

From: Amsel, Lars via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, 29 April 2026 12:51
To: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de>; usrp-users@lists.ettus.com
Cc: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>
Subject: [EXTERNAL] [USRP-users] Re: USRP X410 TRIG LabView



Dennis,

According to the documentation https://www.ni.com/docs/de-DE/bundle/usrp-x4=
10/page/signal-routing.html you should use niUSRP property node on the host=
 and wire an input to it. In the reference FPGA you have to modify the TRIG=
 OUT VI on the top right.  The default wiring ist PPS -> Trig OUT and you h=
ave to change that to match your design. You have to remove the existing wi=
ring as you want to use trigger as output.

Regards

Lars

From: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de<mailto:dennis.jurk@hhi.fr=
aunhofer.de>>
Sent: Tuesday, 28 April 2026 12:49
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Cc: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunho=
fer.de>>; Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de<mailto:dennis.jurk@hh=
i.fraunhofer.de>>
Subject: [EXTERNAL] [USRP-users] USRP X410 TRIG LabView



Hello everyone,

I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on a trigger.

How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.

Thank you in advance!

Best regards
Dennis Jurk


--_000_IA1PR10MB6781772A7F62357D5BE6FA548C342IA1PR10MB6781namp_
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
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"en-DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">The last sentence misses a don=E2=80=99t
</span><span lang=3D"en-DE" style=3D"font-size:12.0pt;font-family:&quot;Seg=
oe UI Emoji&quot;,sans-serif;mso-fareast-language:EN-US">&#128522;</span><s=
pan lang=3D"en-DE" style=3D"font-size:12.0pt;mso-fareast-language:EN-US"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Amsel, Lars via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br>
<b>Sent:</b> Wednesday, 29 April 2026 12:51<br>
<b>To:</b> Jurk, Dennis &lt;dennis.jurk@hhi.fraunhofer.de&gt;; usrp-users@l=
ists.ettus.com<br>
<b>Cc:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: USRP X410 TRIG LabView<o:p></o:=
p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Dennis,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">According to the documentation
<a href=3D"https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routi=
ng.html">
https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routing.html</a>=
 you should use niUSRP property node on the host and wire an input to it. I=
n the reference FPGA you have to modify the TRIG OUT VI on the top right. &=
nbsp;The default wiring ist PPS -&gt; Trig
 OUT and you have to change that to match your design. You have to remove t=
he existing wiring as you want to use trigger as output.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Lars<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Jurk, Dennis &lt;<a href=3D"mailto:dennis.jurk@hhi.fraunhofer.de">dennis.ju=
rk@hhi.fraunhofer.de</a>&gt;
<br>
<b>Sent:</b> Tuesday, 28 April 2026 12:49<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Cc:</b> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">=
altug.kaya@hhi.fraunhofer.de</a>&gt;; Jurk, Dennis &lt;<a href=3D"mailto:de=
nnis.jurk@hhi.fraunhofer.de">dennis.jurk@hhi.fraunhofer.de</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] USRP X410 TRIG LabView<o:p></o:p></=
span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"en-DE"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"en=
-DE" style=3D"font-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:white"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"en=
-DE" style=3D"font-size:1.0pt;color:white"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-l=
igatures:standardcontextual;mso-fareast-language:EN-US">Hello everyone,<br>
<br>
I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on a trigger.<br>
<br>
How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.<br>
<br>
Thank you in advance!<br>
<br>
Best regards<br>
Dennis Jurk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-liga=
tures:standardcontextual;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_IA1PR10MB6781772A7F62357D5BE6FA548C342IA1PR10MB6781namp_--

--===============3298835972127552469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3298835972127552469==--
