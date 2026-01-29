Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G6CLrwTe2nLBAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 09:01:00 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D215CAD0EC
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 09:00:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92BA838E083
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 03:00:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769673658; bh=Fk4NxrZBdMxyMCR2e6xqIoBOJxkRHCtlr/UPq+LkG60=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YdnFHLFld434/YnOw1LIJ1eDmPNDPdqJmRc/aFK+hWPr2WG71ta4AVo8/9tLmI6Ns
	 uyBGSRpJ0L6m3eHfglYviOutDP7Dd+Utwkuot2OmgUkzllQgNeZNAgkWtWudT1ug6L
	 +NRobYh5spWL35xHSiuEg0FPu7PxesOl1F5cGoIU10BxvF6Mk4GRjWnv+hCemIP8k2
	 1ZaeZpVpb3gbyRvK6LKyXL5D7whzA4GEwnXf5Y1I3zdYWPPp6C52kLOv8BOa5wO3Cs
	 YE/1/AzaMmA6mWGwJzkZvZcndUHW0QLPJ6gCB+RKka1XjTmoYFj/WaPBw8G8oF8UG+
	 t6TA3NuXowaDw==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FF4338DEC2
	for <usrp-users@lists.ettus.com>; Thu, 29 Jan 2026 02:59:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="m18Rd86N";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="eM0/PGY/";
	dkim-atps=neutral
Received: from pps.filterd (m0484889.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60T6pisS008385;
	Thu, 29 Jan 2026 07:59:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=FxN/96b9k054EuyVEhkcl+RJfKMx
	9LIUJxP0Dtss+t4=; b=m18Rd86NbRSXzAQJ+02AwJLxLr05wILzgq5TJX6KDdFY
	ac22gc2ymR3xKFQbEN1ivJSqnJ8h72Qg8UvmfZeQJeZ8ZDxaX2N5l8fcwC88h4b4
	i5+A+E687HgBWcycCzOL6UUk3kkYqI35HidGyuiwLZLXuo1mkgu4BJmCXUZP+nIB
	7JCMeoeA5MqKSQ5Vq/QkOn0tXW1DEr7YeLGrMfxgHwSv39c5Ui+1ZDNC90Ik/gvu
	Y65B60vyr7+/ULxwdONiUHAXEDo8dgifwKUAoa9+pIJAZFoZM/U/gr0QPMdZHWPO
	nMHkqpf4kDYioaQ/U2naHU8qQiWpvhD6Ga3T+K/xzQ==
Received: from cy7pr03cu001.outbound.protection.outlook.com (mail-westcentralusazon11010064.outbound.protection.outlook.com [40.93.198.64])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4byh9mrxmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 07:59:40 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C0J3n0s6QHpyzIJHFgy0plhXf6jD/fSuX63yo0rbIfT3XDurERno1dW9bZKya2jALtLSxXAb+gEoWLfIlMyuwzoiO6NS38628OIY0lLLTHNxSflHBauYPdpKu3lJHCL1Z47eL7xN457VlgtJG5OC1OqXLx6wmobT16E9FO09y0dHWU38tQ/9EcCepauRoYrpVhyRJfZLk5pXY7JSMTFNXlZooTEXPet/NDKD0FVYJRTs97cdmUvUqxXIUUZ0/Cf1ZgSsSgCiYOppGFI+XkLUOY71Q/mBbPs2Lb9d/FVgedrstSRk7bpPmd1broHKyezMWYxBoE6LlHBV2dUrGBJmBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4UEm7uweEabuTKmo82sAj8mIMcshgyxJ9uP8jhNrFiM=;
 b=m/CpoC0tX6G1VJeBRBD6CYxYiDZnWNe2/hIJkd8qshwl6/2IpW9bOh96JQPX+8eNvotWVVdRsH9cNQXo0fvy4FTkLd2EDlvj8uHuIS+2ySoIQozFrhLkgFc26SEBQV72YYJczJ13YSpYfUfptsvp1aa/HFi4IZ5GPEHkSFX2NgT7H5/dD+b5ew0odnIE5fTVBJGbay5xmY7cXo1+rNEOkDTLfrgDkz7EgOyv/yTPsiJrn/DSI1soYUGUKmZ9Wq1WH9ulNeAJxVTwirWks17MoaeclnWNBOfq9cIGrm3iwh2PpmoA8vYxNajH4u2ZepZbKpNxshOW8MxEIg7KTUC99A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UEm7uweEabuTKmo82sAj8mIMcshgyxJ9uP8jhNrFiM=;
 b=eM0/PGY/owuqM1UKQKcePQFIR2DilsS44TSwnkWHdI+491yY6igmvXut5fK4qUcbzVj8nzylN//EiUgtv3Ar16mSVMB+sEMtSjg7mNR3SHqSiATha3eFSNgMfsdY8ikxbFA5EhCpafrcCxo0s8foxPp9ZM7bOmfaR3EdsoEXsXrHvpcbboortOvJ1iMFJhtOqNuro59TMpFsElP7mVjvoOjHXx82aFueEMGhasSBTm97pr36ZgqWxOgDnyp9+mImeL5HLHvgIizvuoHUDeNL0+W2qpZU3TA8O1yTtiztVslGkkd07OA22m18kakRVojBAFnrI2Jd1kqrYa49g8kC5Q==
Received: from IA4PR10MB8397.namprd10.prod.outlook.com (2603:10b6:208:566::6)
 by LV8PR10MB7846.namprd10.prod.outlook.com (2603:10b6:408:1f7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 07:59:38 +0000
Received: from IA4PR10MB8397.namprd10.prod.outlook.com
 ([fe80::e003:71bb:d72e:338d]) by IA4PR10MB8397.namprd10.prod.outlook.com
 ([fe80::e003:71bb:d72e:338d%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 07:59:38 +0000
To: Rob Kossler <rkossler@nd.edu>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] Re: [USRP-users] How to disconnect streamers on RFNoC
 graph
Thread-Index: AdyPFC0CxxyuMivHT+GE2Vm0xikg/wAA5qWAAHdF/FA=
Date: Thu, 29 Jan 2026 07:59:38 +0000
Message-ID: 
 <IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EA@IA4PR10MB8397.namprd10.prod.outlook.com>
References: 
 <IA4PR10MB8397396A89682AD790D1F38E8693A@IA4PR10MB8397.namprd10.prod.outlook.com>
 <CAB__hTSZ_+jLJhtas5YJCUxbE+=j2zq_7VVkLacDW3PThgPM8g@mail.gmail.com>
In-Reply-To: 
 <CAB__hTSZ_+jLJhtas5YJCUxbE+=j2zq_7VVkLacDW3PThgPM8g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=64d14c74-0123-4d6b-bb6a-624810a018fb;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-01-29T07:57:11Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA4PR10MB8397:EE_|LV8PR10MB7846:EE_
x-ms-office365-filtering-correlation-id: 56d1caf9-f4c9-4161-c544-08de5f0c59c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|366016|1800799024|376014|8096899003|7053199007|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bVB3dFd4bGJrSU4rWDJ3QjB6cXAxSUgrcXJ0WDZlV2tmak1HN29qOExpQ285?=
 =?utf-8?B?aUlZaXNCUVBCR24wODBjTWJFQTl2eWsrVWVzU09ZODRyNGVySlVCNG1SeHds?=
 =?utf-8?B?bUYrekNKTHJVNmJ1SnI3OW9ueEJOT3h0bnNVelRtUHBZcGNzeWdqbGhuOXV5?=
 =?utf-8?B?TFRPaG5OOGRkNE95Yk1XL2k2TGVFZlI1eWxvNFdhUXlocGtqamNYTEg3dURy?=
 =?utf-8?B?dXMrVnFjM045dzRYdEdqenRpSzZkZG1jV1dRVll0MmZYM09GL0gxOExMcDE5?=
 =?utf-8?B?YWZVTnd5RlRJTHRrODlSTHBsQkdLaE9XLzdvNXpWaXZrSStzUjJHMWFtb2NI?=
 =?utf-8?B?cmN2dVN5RmxqWW9TanVVcC8xazFIS1BLc1VLNG1jKzhvTFVzT3ZYNnhaNjZG?=
 =?utf-8?B?elR0ald0OXdmOXlhQ2tXRXZOQkFkeGVSWU1WbWxob3dhQWRWa2RveENSYXlk?=
 =?utf-8?B?MzBZd2xPa1crYzBINHRDVkVHRHVyUFZtZGxyRmQwaFRWUGg0NnRhV1UvVEsw?=
 =?utf-8?B?cnVqejlBYk1VNis5QTN0RDhERHcrbUZGUUVUcDhKU1BxSGxiWmZpbmIzSWJJ?=
 =?utf-8?B?NXBTbm9oMm1RWnVNOEFHc2JlbVgyUGtnTmFpcDM0MFJPRUFWbUhqMkZxSHdG?=
 =?utf-8?B?eGFVNmFlQm5nZ2R3TVFuVFd5MmRRQ1EyVGlZazRMcmlNMTdQczYxalVRUnd6?=
 =?utf-8?B?M0JLQVZtcGl4TWZtaTZSTk9NM3dVNnZGczlmREZabU5PcmpPcjBXMWtuUGN1?=
 =?utf-8?B?K2h1UElyOE1JWDRlMWVBRDN2S2xsZzBtTVFEVnI5MGRoZTBGL0xuR3dRYk5W?=
 =?utf-8?B?TUI0elBwaU1CNGxodTJPNDdFek13NzJ4VHBGeWZrTjhhTkVqYXVmVGhEa1Fy?=
 =?utf-8?B?YVk0MFowTWxtSHBabkdtV2hkYTRpOEFVa1NrS1dYcTFxMWxPa0Nkd2c5cDhv?=
 =?utf-8?B?WlhZVm5IQkJxRXVmMi9qclkzaDI3NGFTUWpHMG5GUnRhQmwzUWpHWFB2R0VI?=
 =?utf-8?B?eWdVVHgwYVAyUlVtSWhxS3hGVUJxTUt3aTZjck5jNHAzeVFiKytJNTJGU1lE?=
 =?utf-8?B?bzRZQnFWcUMxdUkwSzVXL0hsOU1LRThRdllVZndURmFWUHpNTGtXeHFqckRp?=
 =?utf-8?B?bGhFUkExZERIcDFZRWRmNDhmTzlBUXJ6amMwZ1R6SlV0cmM0cXN1YUw4aDFr?=
 =?utf-8?B?cjdMRVJNUTMvYTdCZllCUjhpRExaVC9ISnkrME5GMmtHcWU5aVBSSGpTNXd2?=
 =?utf-8?B?aEdzeW05cFcyMldLU3JiSnRYZWQ5UHZMaEVoUFRGSUN2YWdSTTR3MkNqcW82?=
 =?utf-8?B?K2p1dHBzWlYvTWdybHFjeFc1aEpTc3FldTUvL1ZrRFBzaFNDQmJ1L0l1UWpr?=
 =?utf-8?B?UGI5VnlZNmI4UEp2WDlXUTVSazNlSlFiMHRmdzNPQlIrYzFGdGE0OGI3N1pr?=
 =?utf-8?B?ZldDNHh1bkd5ODFVV2R3VXVQY250YXppTlNOc1NSSkhqS3l4Z24xTmE0clJ4?=
 =?utf-8?B?KzhqNktGd2t6K3F5ZEVkMnNnNURGMTQ4aFRlczVYQlRudXl4VE5LL0lqbkhE?=
 =?utf-8?B?bEZsaUU1d2QrZlF2b0RhNTJSbW8rdGJGU0lLNERDdm9ITVNMZDJENUg2VFBl?=
 =?utf-8?B?NlVRRTR0ajNzSEx1MGZXTjN6blU4UDFqYkJFaEZQV3VmNnpEdFFrR1JtNHdz?=
 =?utf-8?B?M1FLdU1WL093Vi9hMkU2MzdXUjNjVnVWK043ekZpQlVXd2lLWXlnSkpJSTg3?=
 =?utf-8?B?YWdWNXh5bitDNVdYWGR2d2dwcnFzaXJHRjQxcFBmTmMyUnhqcjIxczZkTmg1?=
 =?utf-8?B?VHVlbUZneVlJaTFLTmYyMlBTaHRlM25uYzRyUFRJdDlFQVVaQkJDTzdHb0FU?=
 =?utf-8?B?eGdXRS8yNTJsWFJMSnIvaGgwaEtZdkRYLzVGU2dUQzZvSlBxOWJoUENNS2tl?=
 =?utf-8?B?aE04czJCdndYL0pCVXg5Q2pmenFaVkdMbDFvZy9ob1NqNXJsTFBJZGtYc2p5?=
 =?utf-8?B?TzlvQWpDdWgwMmV0ZzlPLzZHY08vbzgwZHN3VThMQzJwbkp0N2Q1T1h0bDJh?=
 =?utf-8?B?WUJkOU1aY0RTRzJON3VEZE15Y3FseGVYR0JLNGNpUTdQaWdPWlJSWUdoTVRB?=
 =?utf-8?B?OGE3MWVrK3JnL0FCQ3FNUTZ1ZVF2ZWxFZVZkSDVBOFppSndIY0FxQThrVjRu?=
 =?utf-8?Q?9n8GkRy7M7YKI3xqiY/gxJJaY08fEKvNLH7lU81p4dH6?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA4PR10MB8397.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(1800799024)(376014)(8096899003)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MVpsbDQrUldzRGVWa2R1OHdJOXFFdThZYjJWdnE5QmhSTXVrME1lR00zenE2?=
 =?utf-8?B?MGlQYzhXYzkwK2Z2bEt0akM1STJ3NjhKWjNQRXRISzVCSkoxZWwwVTJXT2x4?=
 =?utf-8?B?Q1Jqck9Ia3o1NTA4N2Y1Vi9TV3BRYzJyR29LS2dydVBJL3hZL1dIcEFGczAx?=
 =?utf-8?B?RnlFYUZ6MEpSeTJiOTgvWWlzNlgzYmdhazhIcHNrRlpKUEc4U1Z5ZXRUQmd0?=
 =?utf-8?B?VmRYVmowdG91eHpiemtYRThMUGZTd3NnTTQxS3pzYmtJRHdvaU8wMFhnRVdR?=
 =?utf-8?B?TjRCUm1oYnU0djVDbEtaVlVQSFpTeGNPMXZpL01LTnpUd0VZdlVqR3RMcURh?=
 =?utf-8?B?RFdVUlc0QlNEcUljU21JRlhDWmFtdFNMTHR1dTkzbVFURDNvTjgxMEpxQ3E1?=
 =?utf-8?B?bCt1d25kNHloaTJ2WS9uZVJ2L1dJMWlwZHQzcnJSaW9RWGJZa3RZRmU1NEll?=
 =?utf-8?B?TGNKbzltUUFNaFg1elVUTXlvVERWQ0tOaldzS0NwZUYvcGxsYk93cXNUZlJh?=
 =?utf-8?B?QjlkbkVWVElOYVc4NDRMUVIwN0VWWFRDaHBnNHBLenlGMVR4ODlpUW90bUFV?=
 =?utf-8?B?Mi80aXZiTDhjL1piTDQvVGMvY0MwL3NJZmFpTmNoUy85b0RtQ21lanFZWW5C?=
 =?utf-8?B?MjZsbkRndU11emhHb3VBWG0xR2lrek5FQUpWVG1MWjQyUHpmck1YTmRvMUY3?=
 =?utf-8?B?bEZqNVdLVHJsNjd4NDhvdGRqRFAvV2tpYXptd2ZnS1NIN3BHSnUwRGR2U2V3?=
 =?utf-8?B?M1dpNjhGei9uM2tUeHdUR2cwNHE4RlgxSWNEN0lpZ2xzUkhMKzdlTmdTVFpZ?=
 =?utf-8?B?SVVxUXdrTjNNRWFiSU01aFBkNkVTZGtWeFF0cnI1ZmdLT3lLVkpsNGFnVDVq?=
 =?utf-8?B?Um9OTkhHazM3T1ZwRjRrK2ZWNk8zMTQ2N3o2dVhobVFjYSs4SDZXV3BhSWdO?=
 =?utf-8?B?Z2RYZm5lU3FXazFnUFZqVGIydmhQaUV0MjBBazV2SFBJdVFpQ2ZjT1Awdkdj?=
 =?utf-8?B?VlVGa1B0OW5xWE9nbmdGMG0zWitpaHJrL0N2Uyt4WE1DbDg2bng5dVdlUHRm?=
 =?utf-8?B?WTdrcEpCNGpndFBJYXdyeVlWWHZPVjk3Zmd1Ykh5NTF2ekx3QXRaZkZzZTVj?=
 =?utf-8?B?MlJUVzAybm1YN3Vid1RYZFI0VFN2NE9nbHBCbW5UeHZTZHJwWFlvMmdmRVRm?=
 =?utf-8?B?S3dGZm9JWllxK09JUi8zWVNtMVM3eFlUNnlzKzhaTlBxRkFPMklTR2lPWTVy?=
 =?utf-8?B?TE9IZGwvLzhEMDJ3VXdkOFFldFZ1Nll6TlVuQVBjdDhLdkVSVEJIUUY5cStx?=
 =?utf-8?B?c1l6cVJjc1RyZ05iSkVsbmRsYjd1VEUvUnhYazltL1lWZmhJZWo5TlhrMEZs?=
 =?utf-8?B?MWtHUzdNaDhDZUVJN3pVZXdJc2FXWWErc3NvMk1FejB3OFpUaW9ZQmUzUHZ6?=
 =?utf-8?B?SHZIZ2pWRVRiTE1hcUlTeUdTRzZOQlNXa1RwRHpTVVp4ZGFtSzB2T3V0bzFv?=
 =?utf-8?B?V1cyTXJSdkVwY1c5L01RWkQwbVB4Kzd4TlJ1TW1WRlNUZElnNFJHODEzOThR?=
 =?utf-8?B?aHlaazYrNno5dmgxblI3R08rU2tBdkZPVEdvUWJRczlmYlN4L3JtT0dLaW9G?=
 =?utf-8?B?WHF3STZUMXplNVN3bHc0V1IyUkZiU3M0VzhCMzdxZnczY252SHlWUzhYRjAv?=
 =?utf-8?B?bEE2Qk9kYzVHMVBubXFWdmpVY1lmR3JBNmVaWTg1c3VSQlNLOFVtWTFYblpJ?=
 =?utf-8?B?UEU3Tnp4c2hYUHdHZzU2aEc0d0w0dE5HUjBoSVpIeFRISVNJb1Fod0s4VVRI?=
 =?utf-8?B?Vkd3dHRJVjFyanptNVpTcGtraXZmYjhxTnRJUk1leS9kSXVsUDljNVpsaEJW?=
 =?utf-8?B?azZnNExoZUREcjlmRUJESHNwOHYvSTBBMWw2UGx2cHdaTDA0Nk1EVUt2Ti9W?=
 =?utf-8?B?SGlSUDhZQXRZWTVQZkh6Rk1NK3NRNVV2Vml5RHhaL3lRTE5jTTFJV3ByUEpy?=
 =?utf-8?B?dHdWY1diN2lGNGYrOTRpYkh3SnJlL1FCcjYzdWIrckJ6aVBJZVVjWmVYSHM5?=
 =?utf-8?B?MzA5M0YxSUtSb1E5TFZ3aEtmODhFQUxxbEhTbjZBY3BKRVlHaXhSTmRxeUkw?=
 =?utf-8?B?dTVFcUZPWlh1UDR1NjdnbnNDWmxTTE9lSHl6QnEyc25vSGc3UFlxNW43UUI3?=
 =?utf-8?B?RFpySUFYQ3ZoRnF4WnNlY0tXVjlrblZvSm5vVWE3RGVwNzJpVG9LSTRnc3d3?=
 =?utf-8?B?Zm1jdjB5WmdJUG5ObnlQVVR6ZFZNekdIYWhXVkNkUFZ2c2RTa28ydEcwYUh4?=
 =?utf-8?B?UkhXSUp0d2F0RVpQSEdvZ2NUbXpnYTFHS0VCZUVEbUFZVGdaUjdPZz09?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA4PR10MB8397.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56d1caf9-f4c9-4161-c544-08de5f0c59c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 07:59:38.3177
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PEu+vV5M81FnDgt5C79xNtPF/i4NApkQLK2xu1omJzf1Bft+NjfZ16NXEvMbM+1/CZSwyOaIByQce8Vrnx21sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7846
X-Proofpoint-GUID: nbskSE805MgWXO5OSWWcxTkMWQtHK0jm
X-Proofpoint-ORIG-GUID: nbskSE805MgWXO5OSWWcxTkMWQtHK0jm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA0NyBTYWx0ZWRfXzIIoieD95ng+ c7YUbJP0dZQPNjLX7CEPIcfY5U6ZO8KJEpd6YGtiSE1Wpz+68c57qitPTjOIYDj8K9Jf6If4ffF T2dNlJXsKLNv2xQwYfTNnSruL77sKXG9kuClrmXfjpeHRY+iMeI5qpuXg8zoU3x4w+Ca0pp9yf7
 joMg3OaWjWAISyfgG+lqueXBradJdhmXR0LYaXsfgRrhEXUhybLfxQgKqrbxijgWiE3ztk+smtl 8uKsWBHkvTHm4afjo+yV19gVD7hVudfqNk5V48V/aG17wo/wjWLvK07UP2p/rPI1hBd0vxZLq9G s1Lz33HN9o30z663FPPpmf/cc8j125oNnn86egVwIlE8eUABcIbbLK0cQZvbrpPBDOMRr4wnCdp
 yryo/SFSIvvH/H7goyCaE02o7D/NpFFSuPncvB0b+VW+pi+uwrSUNuxmJzdAwnz8eSSyQrbxsZP wFxel/vnZUi1PfDTXMw==
X-Authority-Analysis: v=2.4 cv=YbCwJgRf c=1 sm=1 tr=0 ts=697b136c cx=c_pps a=NRkibxwGrRsmaa9wFTKTPQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=geDs06hvAAAA:8 a=WNfmxKQCwBtjXF7KRlsA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=h1QFWR71hGFWis7D5ZgA:9 a=7iuj3fFTY8s8h8xS:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=7yvi0DHx91fDKfvzWsLo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_01,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2601150000
 definitions=main-2601290047
Message-ID-Hash: AOGOTENC6JWZAJAWQHGOG634FAI47NS3
X-Message-ID-Hash: AOGOTENC6JWZAJAWQHGOG634FAI47NS3
X-MailFrom: prvs=34896c8104=nan.yang@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: How to disconnect streamers on RFNoC graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J6PCVIT7TCD4WCC2SLPJ427HRNP3JNAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Yang, Nan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Yang, Nan" <nan.yang@emerson.com>
Content-Type: multipart/mixed; boundary="===============9211964355536641749=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[nan.yang@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,IA4PR10MB8397.namprd10.prod.outlook.com:mid,emerson.com:replyto,emerson.com:email]
X-Rspamd-Queue-Id: D215CAD0EC
X-Rspamd-Action: no action

--===============9211964355536641749==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EAIA4PR10MB8397namp_"

--_000_IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EAIA4PR10MB8397namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you for the suggestion. The ID is =E2=80=9CTxStreamer#0=E2=80=9D. I a=
lso found that disconnecting a streamer does not fully restore its status s=
o I need to create new streamers every time. This works for me now. I opene=
d an issue<https://github.com/EttusResearch/uhd/issues/903> though.

Regards,
Nan

From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, January 27, 2026 7:02 AM
To: Yang, Nan <nan.yang@emerson.com>
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL] Re: [USRP-users] How to disconnect streamers on RFNoC g=
raph



I'm not sure but I seem to recall that the streamer ID could not be queried=
 but that it used a naming convention (something like "tx_streamer_1") that=
 you could guess and use to successfully disconnect the graph. Perhaps if y=
ou log DEBUG or TRACE level messages (or inspect Ettus code), you can see w=
hat the stream ID is.  I know that this is not the right answer, but it mig=
ht get you by if the API is missing the needed functions to query the ID.

Rob

On Mon, Jan 26, 2026 at 5:52=E2=80=AFPM Yang, Nan via USRP-users <usrp-user=
s@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello UHD folks,

I=E2=80=99m trying to buffer all 4 channels tx/rx data on DRAM on X410. So =
my application does

  1.  Connect tx_streamer to replay block and write samples to DRAM
  2.  Disconnect tx_streamer
  3.  Connect replay block to radio block
  4.  Do tx and rx
  5.  Disconnect radio blocks
  6.  Connect replay block to rx_streamer and read samples

I don=E2=80=99t find the correct API for step 2. The uhd::rfnoc::rfnoc_grap=
h::disconnect() function takes std::string &streamer_id, however, I can=E2=
=80=99t find a public API that returns a streamer_id. The connect() functio=
n accepts uhd::tx_streamer::sptr and uhd::rx_streamer::sptr, I wonder if di=
sconnect() should accept same argument types.

If I skip step 2, I get an error in step 3.

Regards,
Nan

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EAIA4PR10MB8397namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.m5684133474275124160msolistparagraph, li.m5684133474275124160msolistparag=
raph, div.m5684133474275124160msolistparagraph
	{mso-style-name:m_5684133474275124160msolistparagraph;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1503742440;
	mso-list-template-ids:583825402;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Rob,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for the s=
uggestion. The ID is =E2=80=9CTxStreamer#0=E2=80=9D. I also found that disc=
onnecting a streamer does not fully restore its status so I need to create =
new streamers every time. This works for me now. I
<a href=3D"https://github.com/EttusResearch/uhd/issues/903">opened an issue=
</a> though.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Nan<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rob Kossler &lt;rkossler@nd.ed=
u&gt;
<br>
<b>Sent:</b> Tuesday, January 27, 2026 7:02 AM<br>
<b>To:</b> Yang, Nan &lt;nan.yang@emerson.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] How to disconnect streamers on =
RFNoC graph<o:p></o:p></span></p>
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
<div>
<p class=3D"MsoNormal">I'm not sure but I seem to recall that the streamer =
ID could not be queried but that it used a naming convention (something lik=
e &quot;tx_streamer_1&quot;) that you could guess and use to successfully d=
isconnect the graph. Perhaps if you log DEBUG
 or TRACE level messages (or inspect Ettus code), you can see what the stre=
am ID is.&nbsp; I know that this is not the right answer, but it might get =
you by if the API is missing the needed functions to query the ID.<o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jan 26, 2026 at 5:52<span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif">=E2=80=AF</span>PM Yang, Nan via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Hello UHD folks,</span><o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">I=E2=80=99m trying to buffer all =
4 channels tx/rx data on DRAM on X410. So my application does</span><o:p></=
o:p></p>
<ol start=3D"1" type=3D"1">
<li class=3D"m5684133474275124160msolistparagraph" style=3D"mso-list:l0 lev=
el1 lfo1">
<span style=3D"font-size:11.0pt">Connect tx_streamer to replay block and wr=
ite samples to DRAM</span><o:p></o:p></li><li class=3D"m5684133474275124160=
msolistparagraph" style=3D"mso-list:l0 level1 lfo1">
<span style=3D"font-size:11.0pt">Disconnect tx_streamer</span><o:p></o:p></=
li><li class=3D"m5684133474275124160msolistparagraph" style=3D"mso-list:l0 =
level1 lfo1">
<span style=3D"font-size:11.0pt">Connect replay block to radio block</span>=
<o:p></o:p></li><li class=3D"m5684133474275124160msolistparagraph" style=3D=
"mso-list:l0 level1 lfo1">
<span style=3D"font-size:11.0pt">Do tx and rx</span><o:p></o:p></li><li cla=
ss=3D"m5684133474275124160msolistparagraph" style=3D"mso-list:l0 level1 lfo=
1">
<span style=3D"font-size:11.0pt">Disconnect radio blocks</span><o:p></o:p><=
/li><li class=3D"m5684133474275124160msolistparagraph" style=3D"mso-list:l0=
 level1 lfo1">
<span style=3D"font-size:11.0pt">Connect replay block to rx_streamer and re=
ad samples</span><o:p></o:p></li></ol>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">I don=E2=80=99t find the correct =
API for step 2. The uhd::rfnoc::rfnoc_graph::disconnect() function takes st=
d::string &amp;streamer_id, however, I can=E2=80=99t find
 a public API that returns a streamer_id. The connect() function accepts uh=
d::tx_streamer::sptr and uhd::rx_streamer::sptr, I wonder if disconnect() s=
hould accept same argument types.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">If I skip step 2, I get an error =
in step 3.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt">Nan</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_IA4PR10MB8397BC8ED7A2E75BB7FC1FA4869EAIA4PR10MB8397namp_--

--===============9211964355536641749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9211964355536641749==--
