Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLAiHy6gAWpKgwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2026 11:23:58 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9837550AD24
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2026 11:23:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A3D538A9A1
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2026 05:23:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778491436; bh=x5jVdktQzgEnAF+pV2SmPjhLQ2mtWmPSoHRCFVpC2s4=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HQ4b618CXSZDXVX/EzZIYned6AK2UI0MK0sOxWSRd/0Uen4WuVq80FVYqzuWOhUHU
	 L1Yz/ohB4oBWCisaCUjbkaPaooTJGM/YHuFWfxtQTHUoKMzNSCWPadIPytX9H+7gMH
	 Qt0CoVS4rBxEUsD7SjCL1ZlY+fIACcVg2lIJvPnOXPUK7Y0uxTdOtxpvZJRRxCHI8d
	 ws6c7taB3vHWzqVK04RHxw37nvsj0Qz1Rf7PgEONyc3/skMSZNBCM4/OdpyD1iUrrI
	 1cA7VC8tRUNWHLHCUpu0nwEpVrgB5LZLAaejlluINsad78Xsm/Eu6Ps1kRA/xBrQn3
	 pzOljxw0eHbkQ==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A58D38A9A1
	for <usrp-users@lists.ettus.com>; Mon, 11 May 2026 05:22:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="MiB/ahv4";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="zJfWpvzV";
	dkim-atps=neutral
Received: from pps.filterd (m0484881.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64AMk0pR1054345;
	Mon, 11 May 2026 09:22:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=vSh8MiMNoo2LcldPPn7FIeAbMtYD
	Hf7dBC2ZXQTtE8A=; b=MiB/ahv4yYbtfrgAl/MJWSkwZWnm8BycX76mwlfW8oY8
	OT9mvT2Ri/P0zyhUV8d6MGrPJfhpOoYQhSuHihMFWt3b/+KgBpHLwy9/gdD+vrQv
	RwCptTL9IaWWJuTgfzz1745nep7XmFHG0ioRW41KM6qQ10gBwhJ2HU5zmYDGMIkF
	jtwDBwbvS7CUk1XuJVUFL+X74ivwx6L7uq5MO1zPsnM99UlGu62qzVWsvhz6Tjc2
	RJ4sVFwSgZ51Pvl36SOldLSMAQmjVdz1YKQGYHRVQCdJUT2yHzxJwYFzmZyJguVk
	Fd8oLxnEqKY0B/cnovrkVSeijHuWk702ks8LMSvDkA==
Received: from mw6pr02cu001.outbound.protection.outlook.com (mail-westus2azon11012016.outbound.protection.outlook.com [52.101.48.16])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4e2kbtdv6a-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 11 May 2026 09:22:38 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eV4KifJaJp5/JUtIDycC/Iqh1edSQ+nZtPH6DODKcDn3jzC/U1ZHwc3TZEh8D8FHwW4INRn5KIadzqTwmLsD2jE0gVyXIH5ZTE26BfS5cYW/ZOLFtCX/Zqm/NpqqPFDjhz1/TojRTtbj6tSHjEv5IueUuXfRiva1+LW/gEZLZxCIJYVGtxrkWQpkFvQnGRTKwBaivbOY1ARQPGKuTvCQWN5T3g4s+xz5n2sEpp/5kts+vtYzV4kqdqnSVqvXkSLpUvoZaY8ScxmPFQOIm4B3sS9g/ptQhoxRgURLamFeiehHLqmmbN81+9b9nl07CTTohdR/xZKPzlPzCjU3t5PkRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xwlik7BtTaFvyboINDzvYY7EED02yrtXI702xCEVt1I=;
 b=luIykDU00ZPp3FI8Ks4gceuJZy/tAEvVDsf3BlQ7qY6r1QokzQmSKw7LRcya38aSG5CvTSlCkpHKYcGhHwloxlAi1N1YeZz9g5FAr8z6BqAU3pWpNqQTZJYAHAhBNQgqNUvTPSpa090f9HcyN89dmjG1IBcsktOVQ/5+65noBZlWGVmU87ZMxevjLw8lR/PW/W3ty8YbKD+V6xWb0eD+GVYb6cgKTX8iSGbyX9UZMYnuarDnmsuR9ucBLK+OrlK3GiKGZQgIVB2I9tUpuz3k42DvCzUdQ+AYzKfwd8rq+g5+zpelbijC01PuLabqAf0UomUg2ZDqYbR4tnUC7S2PmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xwlik7BtTaFvyboINDzvYY7EED02yrtXI702xCEVt1I=;
 b=zJfWpvzV+EI6mMZmFzKHOp86Ik4fzv2VOkl7VR9yYjA4RtYcLJ8pIeHTbcmYi4D/4iKicvRVwu8VJDAC+ECDu9DU7BszjDxiQgL3y2f6s/llOKW1Odt9ES39NFWKbJ7z+b+mwLXrhM8oj68pjZM7rC7QSd2Br9n2UKBHcZAVMBdMsAzsV1T8sx9y9X9Be0rehIspH73x6NkVdtTFuXbQLJV+O69tASHoDAxfXP+21npzG6eUtzAf9ty2cplhfoH0DiNDazESH5gEp1YnwrQjrtOXPN0NFLRRpKSFhAt6iaMMV0dwdUI6I5NvMUkGQaB8AzHIOpePOdOI5i5kyrNxQA==
Received: from IA1PR10MB6781.namprd10.prod.outlook.com (2603:10b6:208:42b::9)
 by IA3PR10MB8066.namprd10.prod.outlook.com (2603:10b6:208:50b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 09:22:36 +0000
Received: from IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40]) by IA1PR10MB6781.namprd10.prod.outlook.com
 ([fe80::bdba:6cbe:1a15:fe40%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 09:22:35 +0000
To: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 TRIG LabView
Thread-Index: AdzW/IbukQ14JROXRXuMEmxRA866pAAyEPhAAWRE8OAA9BsYUA==
Date: Mon, 11 May 2026 09:22:35 +0000
Message-ID: 
 <IA1PR10MB67810E3B5E2709178EB89DDE8C382@IA1PR10MB6781.namprd10.prod.outlook.com>
References: <2886c174218f45de8fb1b100e4b3c6d0@hhi.fraunhofer.de>
 <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
 <a8b2153b867b47859a6f852d93458745@hhi.fraunhofer.de>
In-Reply-To: <a8b2153b867b47859a6f852d93458745@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=2857418b-4c4a-4388-ba20-4a030beb1e61;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-04-29T10:41:53Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR10MB6781:EE_|IA3PR10MB8066:EE_
x-ms-office365-filtering-correlation-id: 56f01327-bdde-42ed-e9f6-08deaf3ed66a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|6049299003|366016|1800799024|18002099003|22082099003|8096899003|4053099003|13003099007|4013099003|38070700021|56012099003|3023799003;
x-microsoft-antispam-message-info: 
 5NaKaOgic3hLhBNKnWF4eccFaM3+WxwWbadxGzgZ/7rQBbeegx535ABvBVXIWk0BkMWWWSUNelLkqeMR9fhbRNdWd/SgVuXGG7CJADuHymcp6kal3wyrzvmCPwhmnefu+b2LFvpVHblZQzJHx8ug0/ZSD9co1gW4EOnixPe9aOWBp0rUNGZwM+bnrNy/0a6kbenN243ETLRf/FY3CaEfBLMpwn3N+aGp8eNKMeLPrh+It4HKinde3x/nW1dcjXHu4m7xkFHxCgUYvbyC5ZEy1VClWOUAT/WNwLDRb1pECzLbu2IVcRaY/ySTcP0jemq82wJ5Q87+EZEU2phFqSUr131RdYpc0OF7rLiKZJLomwqydK5Zt2MCEJtfqGtBDeEeNBLpkYxn04u4ZkKyryhmxtgy++/1L6/LWzE+//xB7TqmLRDip3j9aA860qQESY1XJgSB0hx/ICdh0u0WOPrpmPJr36ouwBgeEaTr+NmNCvXob8x5b8ilqUkzvg+OQYe3CvsZnGQdbZyw9a7ZHFLUoiSN1B+7TY2R7sUI4woA9ugLg/ArFqkVOrYDDiTtTNvnIITCkjLPAtpvx1AX3TZLb8YfHrsEquVZlHt77HU4Hke/hILTGSrYVAHdAB8qFuGnN3Zj6ntVeJloevxq9RkRtjb26kSaxmVGZ5c1fCDX8HTevDpAlKAedipl5eSmohkuJ6XBWgn5QUmUgcDHHX6WyA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB6781.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(6049299003)(366016)(1800799024)(18002099003)(22082099003)(8096899003)(4053099003)(13003099007)(4013099003)(38070700021)(56012099003)(3023799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?REZ5VlRxZjZqUzJtM0k5cXBkejNqS1FIZkN5d1hCN0FMTlUvZGszSnQzbVRv?=
 =?utf-8?B?NjFYOXl2eWdZeWFvYlI0dkk1bGMvZUViR0J1T1YzTkxRUkJVNXdUeTVoaDY5?=
 =?utf-8?B?a3NKdms1WjdOZ21qMXVnejdMZ0NxbHlIVUdweWZzdG8wOVI5aGJFK0QrVXdJ?=
 =?utf-8?B?NGxybmlmK25aT1ByUEtzOHpsb2tnVXR3Q0VldXlsbnEyYlhxeVFWZlR5NEVr?=
 =?utf-8?B?bjhRVEY1b1p5eEs0OTdpb25aUUpTZmVuY080bnpraVYwM05zbFVRV2JVeVZu?=
 =?utf-8?B?dU02ZlhJSHNleVoxTHArUVpWbSszM2dBN0pPeUM5Q25MUEcrelJxallLQlpI?=
 =?utf-8?B?aW1pUWRha1lNSWJTRzErdHgra3BHWVJaZmhJWXJOUFlzN2d2Nkd0d0FxVW5l?=
 =?utf-8?B?eTVBaXN4ZnZtMXdOY3M3M1FJalM0MVJKaGNDNWlDeHkzN01DTVFwTnJzb2t0?=
 =?utf-8?B?Q09QWUhaU09PSUkxWXpBVzBqY3VrckRUN3FpOGVDbGZxL1crWWxMNFRBSDhi?=
 =?utf-8?B?cUNuVk5DaUlDYmFUaUczbWo4aDl5eGkxOUlDNWM3cGlQb25rVHFvR0YrNVZt?=
 =?utf-8?B?NDVLWERyNDNGc3JoS1p3RWtnaUllMkliYVJLMTBncllpN29mdTEzUFEyNVVL?=
 =?utf-8?B?OGY5RTBMMFdEODVCMzFVK3ZJZE14VzBPanhlOW1zTkRFelBEYXZwMEZHY3FD?=
 =?utf-8?B?Yy9sT0J3OUpDRUV3WUpmQTUxRGs4bDVGanc2MVowYkFiNEtwZjMwYVllSmtM?=
 =?utf-8?B?QmZ2RkpkelE5UmdxeXpkbG9iNXJZZ1hONjc4cjhreU4yTHZaaDlyRWJmSzE5?=
 =?utf-8?B?aGVVSGpIekJ0Mm0rWFluQjlDelFkamVMM1lyMnlaclNMT3h5ajBkOTE1RlF1?=
 =?utf-8?B?N0NYenRTakcrcDVMbE90OGx1c2dLSmhlMThyd05kcUNpVHJQTGpSUEhFSldD?=
 =?utf-8?B?U1BHWWdFUytsemxnbnRhSnNnSVpmK2tmaFdzbDB2RDRHcDV5RUp4OFRZTjRo?=
 =?utf-8?B?SXVmTDVXT1F3MXo4ZG5OdFRRY3pBQm5Bclh6cks5dmZ5MkpZazY5SVVTQldj?=
 =?utf-8?B?NVVRN0k5NnpXZGRYcXJNenprTVdVMFdUc0JVaTkrTjUyUEVJTERua2xudTda?=
 =?utf-8?B?Uk5KQzdPM2xCdTRCNzV3dmoreXJua0lBUW5jZDhBdVRkbmFGNmZUU3VLeTIz?=
 =?utf-8?B?WVFPNVZ5L3F6enFMc1llNE11SmI4Y04zTEZoOFMwbkpxYnJzSUlyQTFIczJS?=
 =?utf-8?B?Y010Zm9XTmpKOTdvRmQ4eFNYcXpEK0RreVk5aWtzK0IrcTZyV0t6L0tpZ2Vq?=
 =?utf-8?B?SHp3RUJwbVFHak56c0pGQWdrY1E0T1RoWXlpd21wRFNQbXlkQzEyL2FnWTNu?=
 =?utf-8?B?ZFdJOWJyZm12c2ZoT0dRRjdLM2pzZi9pejIwZkdxcTU0aXBVazMwODlWWUJu?=
 =?utf-8?B?V2F1ajhTL3lZTWtkaEtMVVVrRFNlUGJSLzJrb1FZeGVVOWdmM0RhODI2Y3Vp?=
 =?utf-8?B?NVkybUJxZ1hMcVlIN2h1MkJKNU85czBiSnFJRjBlT2o0MXd4TFh0ZldCK0RE?=
 =?utf-8?B?MFF3MzhReTBYRGhnYUtVMG1XYS9vNTRvR2ZqQUZEUWhkMEprd1ExbnRFYmtr?=
 =?utf-8?B?SjB1NnQvTlJWN1ZpdS9KTldFQUpHVm1EUUVoakV1NkRYZ1RmaVN1R08vZlJB?=
 =?utf-8?B?S1JmanJIUTNNS1hFemZMVE1MNTYwME1BMExIdktBeXZlcnpUVVl3NUVrL3pu?=
 =?utf-8?B?NFcwR0wweXNVcERkVHlOZmlYSGYxdEMyVmxMYSs0OHl5UERZN2hVT04ydEha?=
 =?utf-8?B?QUpnUlFPQXJtRGkveHk5ZG1ma2hTWWk1MExuNVZUV1hDYlhpSk9OUXZYK2s2?=
 =?utf-8?B?L1BMdWQ5c2JkRFV4R0NhMTk4eUVXYnU0NWRyQzREd2hLWFVQT01yejF1MUFE?=
 =?utf-8?B?KzB4M2tkM2dCYmdUUk85M3Vjb2p5NEFlZTRWaWtTVkh2NjMxZSsrU2cvdVFs?=
 =?utf-8?B?VEtRdUxVMEQrbmlSQ28zb2t0WVRTeURPalhzNnR4WDdIU3JVWTJxVEVHYmQ0?=
 =?utf-8?B?OVp4bk9Bb0FTOWlla2kyNEJBdG56Q3RUdG12MXVEZG1yOWtsVkpLV05sd1pz?=
 =?utf-8?B?dzJSd0g3Z3RzRWN6YndqUGdINHNoK1ZzU2lRTlNWSHNTNEdieGNpeXczdGY2?=
 =?utf-8?B?SHpHR3RHeUZETm1NSnMwUndNeU9WOFM0L0NseU5tbzQzYUVVaDZaQjROamJD?=
 =?utf-8?B?d3J6Q0dxTWVFTDNZQVJvN1VvT0FHanllaS9vc0VzdUM5bFQ2Qmx2eGdZY2dU?=
 =?utf-8?B?cy9zbDh6WW8vQXFaOTFid2lnQVpuK05Tbzh1R0dOTzNqL3p6T2ZHQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	aWam/LA+6kwA5d3earDE26PXzLL4DOfybSY5Vw3vamMdK4VRYX6307zkk8/3NEnktJ5X7lH9G36Frnpe6cFGGx5HbQ2TfkwgRz0/o8QRq593y+6dv9f80rVXH+8fNpsYyZOau+5irBOSOJVhDRuoETFyjoo9QLbJYCMfIi+Fbsu0QvVLATsYaMagJZ2y3hPwU69Jrp/x53sufxE981Pl9kL1QtFWZNbiYkTFRv0I6UFdeqSdPNZZdgdFat+s505iaG/l/3vbb9ufrdO2mh93Y7fkUyCDekQ9Q70sNXMr3p4odfVWKUQ6+qCKORzmiTpE/bxrSm2kQ5oMRoPkeHBSTw==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB6781.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f01327-bdde-42ed-e9f6-08deaf3ed66a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 09:22:35.2698
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uLHFEBOHbzvJyyzcqH51vwidZMuRaefcp8tiW//gRcd1NULQXrN4Gv4vT6NnSEtMhNY77WMyFs3OzYHRCk/cow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8066
X-Proofpoint-GUID: 8NUcVxDfL6Ko4Vc7KdX9ZhDhTWrUc9dO
X-Authority-Analysis: v=2.4 cv=OM4XGyaB c=1 sm=1 tr=0 ts=6a019fde cx=c_pps
 a=V6LhDW2JNEJwPIi/f6b7qA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=NGcC8JguVDcA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=w-TWy_O1uGRWD6PSa5rv:22 a=gVGD3344AAAA:8 a=RpNjiQI2AAAA:8 a=geDs06hvAAAA:8
 a=etiEgX_XAAAA:8 a=LZCD_D6yhuGREwPx2i4A:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10
 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=SqL5BN0J_6hqnuxicoAA:9
 a=flNWky1yfBz89UX2:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=HXjIzolwW10A:10 a=T6a71-JsGAwA:10
 a=xQEvYfgLW3QvObN0DhJi:22 a=7yvi0DHx91fDKfvzWsLo:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-ORIG-GUID: 8NUcVxDfL6Ko4Vc7KdX9ZhDhTWrUc9dO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDEwMiBTYWx0ZWRfXztNcgK+pAkZN
 IwQorn5A33T5slmGR9MXKqi8Wo4cJL5X4bO2MW3nKCXoElK4OkRAwecdj/REWTiZdd4CUrAkIgN
 gsEod5l6H8qDf3/GNyNWh2kJGo/txNVBt2RfM0lmuP9WEZPonlpF0voFJDTIzpJc9YCoX9oyaaG
 kZ3MBRkfrpcTslnOpd8Zbp4amc0mEYvlFBFTGF2WRyO1jTwLxTjIVNXu4XCW6rhKX75I0c9wC1D
 h9tzEUF6uhBNBsyvW30fZt06DH/4ex8AwN3sSRj0VBqgmTa6OmJeSI/5pHxS1sj7aPiAm7YeAmr
 hpCZS0ddSO+NCtsehO+rpoAtalKdy8R8twJmAEqXu6S4SP3HWoR9G7VIV6muvGTRs7bkeWPvoSK
 M4+YqJNFPS0nPTMqz2gXZVUSPwFU3cl/kFaja0fvbwJKOw+mNwPdmAsKLT2UK6Lto3ptYiN9UAm
 rSSyUBWF1h7Q76wnI8w==
X-Proofpoint-Virus-Version: 
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605110102
Message-ID-Hash: RRVPHVC5A3EFTA2VBJQOG5CXQQ66GAL6
X-Message-ID-Hash: RRVPHVC5A3EFTA2VBJQOG5CXQQ66GAL6
X-MailFrom: prvs=65913a9186=lars.amsel@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 TRIG LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JNYJBFR5KAP4GZWP6YM5HYQRKYOUFEOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Amsel, Lars via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Amsel, Lars" <lars.amsel@emerson.com>
Content-Type: multipart/mixed; boundary="===============3955896084130096469=="
X-Rspamd-Queue-Id: 9837550AD24
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[lars.amsel@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fraunhofer.de:email,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Action: no action

--===============3955896084130096469==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_";
	type="multipart/alternative"

--_004_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_
Content-Type: multipart/alternative;
	boundary="_000_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_"

--_000_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Dennis,

First you need to use the niUSRP property node to make the USRP routing the=
 signal at the at Trig In/Out port as Input. If you have that, you will rec=
eive your trigger as a Trig In. Assuming you are using the Reference FPGA a=
s a basis for your design drop a FGPA I/O node on your diagram an select =
=E2=80=9CBoard Interface -> Trig In=E2=80=9D as it=E2=80=99s source. The Bo=
olean wire represents the state of your Trig In port and you can use it to =
drive the e.g. the external trigger inputs of the sync Vis for the RX and o=
r TX chain (depending on the intended use case).

Regards

Lars

[NI]



Lars Amsel
Principal Software Engineer
SDR
Test & Measurement Group
+49351206931427 | ni.com<https://www.ni.com/>


From: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de>
Sent: Wednesday, 6 May 2026 14:56
To: Amsel, Lars <lars.amsel@emerson.com>; usrp-users@lists.ettus.com
Cc: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>
Subject: [EXTERNAL] AW: USRP X410 TRIG LabView



Hello Lars,

thank you for your reply. I have seen the mentioned topic in the USRP X410 =
User Manual, which roughly outlines how you can replace the wiring in the t=
imed loop where the Trig Out Routing VI is located.

I was rather interested in how I can use TRIG IN to interfere in the Tx/Rx =
Loop to control when I receive and when I stop receiving with the trigger.

Best regards
Dennis Jurk

Von: Amsel, Lars <lars.amsel@emerson.com<mailto:lars.amsel@emerson.com>>
Gesendet: Mittwoch, 29. April 2026 12:51
An: Jurk, Dennis <dennis.jurk@hhi.fraunhofer.de<mailto:dennis.jurk@hhi.frau=
nhofer.de>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Cc: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunho=
fer.de>>
Betreff: RE: USRP X410 TRIG LabView

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


--_000_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
span.EmailStyle20
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
areast-language:EN-US">Hi Dennis,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">First you need to use the niUSRP property node to ma=
ke the USRP routing the signal at the at Trig In/Out port as Input. If you =
have that, you will receive your trigger
 as a Trig In. Assuming you are using the Reference FPGA as a basis for you=
r design drop a FGPA I/O node on your diagram an select =E2=80=9CBoard Inte=
rface -&gt; Trig In=E2=80=9D as it=E2=80=99s source. The Boolean wire repre=
sents the state of your Trig In port and you can use it to
 drive the e.g. the external trigger inputs of the sync Vis for the RX and =
or TX chain (depending on the intended use case).<o:p></o:p></span></p>
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
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:75.0pt">
<td width=3D"100" valign=3D"top" style=3D"width:75.0pt;padding:.75pt .75pt =
.75pt .75pt;height:75.0pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100" style=3D"width:75.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:60.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:60.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:27.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><img width=3D"90" height=3D"90" style=3D"width:.9375in;height:.9375i=
n" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01DCE137.87FF5220" alt=3D=
"NI"></span></b><b><span style=3D"font-size:27.0pt;font-family:&quot;Arial&=
quot;,sans-serif"><o:p></o:p></span></b></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:60.0pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;heig=
ht:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"350" valign=3D"top" style=3D"width:262.5pt;padding:.75pt .75pt=
 .75pt .75pt;height:75.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><b><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:black">Lars Amsel</span></b><spa=
n style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><br>
Principal Software Engineer<br>
SDR<br>
Test &amp; Measurement Group<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,sans-serif">+49351206931427 |
</span><u><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:bla=
ck"><a href=3D"https://www.ni.com/" target=3D"_blank" title=3D"https://www.=
ni.com"><span style=3D"color:black">ni.com</span></a></span></u><span style=
=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p></o:p></span=
></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-liga=
tures:standardcontextual"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"en-DE" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Jurk, Dennis &lt;dennis.jurk@hhi.fraunhofer.de&gt;
<br>
<b>Sent:</b> Wednesday, 6 May 2026 14:56<br>
<b>To:</b> Amsel, Lars &lt;lars.amsel@emerson.com&gt;; usrp-users@lists.ett=
us.com<br>
<b>Cc:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;<br>
<b>Subject:</b> [EXTERNAL] AW: USRP X410 TRIG LabView<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Hello Lars,<br>
<br>
thank you for your reply. I have seen the mentioned topic in the USRP X410 =
User Manual, which roughly outlines how you can replace the wiring in the t=
imed loop where the Trig Out Routing VI is located.
<br>
<br>
I was rather interested in how I can use TRIG IN to interfere in the Tx/Rx =
Loop to control when I receive and when I stop receiving with the trigger.<=
br>
<br>
Best regards<br>
Dennis Jurk <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"DE" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif">Von:</span></b><span lang=3D"DE" sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Amsel, =
Lars &lt;<a href=3D"mailto:lars.amsel@emerson.com">lars.amsel@emerson.com</=
a>&gt;
<br>
<b>Gesendet:</b> Mittwoch, 29. April 2026 12:51<br>
<b>An:</b> Jurk, Dennis &lt;<a href=3D"mailto:dennis.jurk@hhi.fraunhofer.de=
">dennis.jurk@hhi.fraunhofer.de</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Cc:</b> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">=
altug.kaya@hhi.fraunhofer.de</a>&gt;<br>
<b>Betreff:</b> RE: USRP X410 TRIG LabView<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US">Dennis,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US">According to the documentation
<a href=3D"https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routi=
ng.html">
https://www.ni.com/docs/de-DE/bundle/usrp-x410/page/signal-routing.html</a>=
 you should use niUSRP property node on the host and wire an input to it. I=
n the reference FPGA you have to modify the TRIG OUT VI on the top right. &=
nbsp;The default wiring ist PPS -&gt; Trig
 OUT and you have to change that to match your design. You have to remove t=
he existing wiring as you want to use trigger as output.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US">Lars<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:12.0pt;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
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
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"DE=
" style=3D"font-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:w=
hite"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"DE=
" style=3D"font-size:1.0pt;color:white"><o:p>&nbsp;</o:p></span></p>
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

--_000_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_--

--_004_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=23947;
	creation-date="Mon, 11 May 2026 09:22:34 GMT";
	modification-date="Mon, 11 May 2026 09:22:34 GMT"
Content-ID: <image001.png@01DCE137.87FF5220>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAZAAAAGQCAYAAACAvzbMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAE
9GlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0w
TXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRh
LyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgOS4xLWMwMDIgNzkuYTZhNjM5NjhhLCAyMDI0LzAz
LzA2LTExOjUyOjA1ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMu
b3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91
dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJo
dHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8v
bnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2Jl
LmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3Ag
MjUuOSAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6
MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiB4bXA6TWV0YWRh
dGFEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIg
cGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0
ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4YWUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6
MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIiB4bXBNTTpPcmlnaW5hbERvY3Vt
ZW50SUQ9InhtcC5kaWQ6MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIj4gPHht
cE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RF
dnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4
YWUiIHN0RXZ0OndoZW49IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6MDAiIHN0RXZ0OnNvZnR3YXJl
QWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyNS45IChNYWNpbnRvc2gpIi8+IDwvcmRmOlNlcT4gPC94
bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4g
PD94cGFja2V0IGVuZD0iciI/Pigfu+MAAFg9SURBVHic7d13eFxnmffx7ynTZ9SLZcu23Etc49ix
kzg9JCGN0CEsnaUssMAC20JfYNldlqUu7PLSlxI6KSSk92o7jnuVZcuyujSafur7xxnJsuMiHUtW
8f25LmETa+Y8085vnnYfhd/efhdQCzgIIYQQp6cCzTpww1i3RAghxISzUgUOj3UrhBBCTDgH1bFu
gRBCiIlJAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBF
AkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQv
EiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8
kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjh
iwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEII
XyRAhDgV1RnrFggxbkmACHEyCpSYOuB6/0cIcQwJECFORLeosDS+2DmVkKuCao11i4QYdyRAhDie
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
RU5ErkJggg==

--_004_IA1PR10MB67810E3B5E2709178EB89DDE8C382IA1PR10MB6781namp_--

--===============3955896084130096469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3955896084130096469==--
