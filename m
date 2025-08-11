Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6CCB212A5
	for <lists+usrp-users@lfdr.de>; Mon, 11 Aug 2025 18:57:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46847385D4F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Aug 2025 12:57:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754931456; bh=AhK8ypgAOYtUC7X4AURWkkSZwXOrsPPOXhXyjMmI1JE=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=h4fV8bsIfu4gvjEsW1Bz9LhrL4YRvfFJesdMFX5Y6yrTnh4+f9qQHiG+SCqRK8SkM
	 VGFR65M/HfDqluhiMfSc3XmX6GA4HPhUJMQr7/8v/J4tFVJxltICF+/xzZ0ELaN6rj
	 cXrBzwedyqTwL9+N5iQgoJIkw2cQbKhw6eX+c0IR3cVEMIppVe0DT92Mvo2ynPLpyq
	 7lCbAg4mpx23Oj1Bs6Wq/9V/bHx5pAaQBb03ZHwBNOMBoX2iWuobGIgiVI5+ROZyxY
	 Oyj6EdWy+74Ele7vXQzzX8ta0iDZfNxuDW46/2IDCTlkt0kYziv8ICx+nVUIbXWQdz
	 +WpNjI2bNZLfQ==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id F1B873863B3
	for <usrp-users@lists.ettus.com>; Mon, 11 Aug 2025 04:40:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="XbDarsCp";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="YByoce6R";
	dkim-atps=neutral
Received: from pps.filterd (m0484887.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B4CucW005706
	for <usrp-users@lists.ettus.com>; Mon, 11 Aug 2025 08:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=0FpzFcStz0as2cgNrR01kClVRv+d
	U38dDrkjOKqQdEk=; b=XbDarsCp0+nkJD2FTLHSUplwO0vW3ztDxuSnTtdhc3jG
	FAfkz9Te8QmAJwf2dW45dK+GWDToun9gxs5y5lU1Ft453HDE+3TaCdyVviCBacuL
	LQ+Sc2y7zNeDLRZ2lzMU6OGeOTzKzPdL7QXYp2Oyp6rg5KXmQaOdbopNKoFM3xIB
	C1obpXjpksyHgsb+Z+Hk1c9+VcpzKsOpioAX9uOr2z8HhbYQjf3WrhzUxH2SVgu6
	kz7+qrD1ymL9g53EO2rIAl0lYWCF/OtIZ5/yYFL6GVw223dBX6Lg0BauVEhxslCl
	p7fY++DN5DFPMnl4uuQtkiwAF9KdoOenTmDkWnBB0A==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010032.outbound.protection.outlook.com [52.101.56.32])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 48ehrdd7xf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 11 Aug 2025 08:40:37 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rzJ0ti1LYcSN6tVWNrR1zlW5k0XjcKX1kD2lOuAMuoaXJpqoDALAUSe1ztVui1aYWgx0r4TJkhbUSxBXq64j2X/ZTGpsoFeFyioF0IsTUTjNwXd4NFT+ER/YCHrEQJ7bU1jQMeSDzbcth3D3ljI6a1ArvloQSjvs3uYiMom5A49xO+zvOki/zQkFQA7UnHIrDdbTAFQ9If+UpnjDXfS7icEvkzthL+nVCKpB6Zw+/whZLA8hlGIQ4MA8bd7H2BH1WFVRu9i9gVPa3+9QgxUTMq7jdgJAldfGP6m7pxqTQUOdXARhK7R2WOiZbywC+BTSsAlsQI5bQQZoykCN6rYVRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3bhVDvrbk/kn2e1ux1isJrLvPCcnzTcFY6mmAK9syxs=;
 b=ilLnE5j30AecfCR59p2CIdoxLBlmnOaf6Gu/pG5BSb/qaa9GqjNFJX+xnyWsRvCKlaFmnp3byYJWjGNVpwrbYn9AYNJY+KrGVy3DLBAY/ZuOtIpWZr/EHn3YyAFkgBQ/s8zy6sjdTsnJuVgKigNNe1mDj2wVMLBelG1bLc4zYRS7JjdsaKtEbINK+m/u7txtD8cfbB63ec4Y1KxzKRsOHOEs8en3r/cBbLs4RQnaTYU5OZ0hjS98iuDwAzUMatT5XH2jdDmUsj0nXDviY5nntHoOgq5ypboruznSTaomLC29FzIiggB1znZKuvrAuQ2rZIifpLpZdOaDyNpWooYTEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bhVDvrbk/kn2e1ux1isJrLvPCcnzTcFY6mmAK9syxs=;
 b=YByoce6RJuCP8IwTsiakM64zGXTjmm5hCKmCqaUgo//4AwEwwlxPMskWE14ocjBK4IY/aPARQIaHpVNA3ChWD9qTtVCDRgzkgM2ZwDkK4DuJf28dtALmd6Eg+xET0d2CDm3UWlgkiBxaa4G3ovhTjdG36hjOVnKKbqqvgfKtNl+3ugLZ7224mFlTqeMX0MYjimJQ/u1M4ifvkrMAQ5iiUitZuic1ba3qyiL+bBEvK9HIXn+4csspgkMowJsn4X+HOQR4mTwF5slZU5QlnFIHrOCLJFU23Wb09KRt12RNaM6q0Aq44rwrwqjUnMnhA3E9mLTGNaO/v/9j3dib+izPsw==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by PH3PPF7E48920CA.namprd10.prod.outlook.com (2603:10b6:518:1::7af) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:40:34 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:40:34 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Using Replay block on X410
Thread-Index: AQHcCpua91+VLWnkB0CgaUzWavIQyg==
Date: Mon, 11 Aug 2025 08:40:34 +0000
Message-ID: 
 <CH0PR10MB517913112EF42379F0372DD79928A@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <CAB__hTSX9oOegJq6XvHty8U=UzJAvLc=xtAg4r4fhsQrRt0-eg@mail.gmail.com>
In-Reply-To: 
 <CAB__hTSX9oOegJq6XvHty8U=UzJAvLc=xtAg4r4fhsQrRt0-eg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=f4962657-3529-494b-a5ba-cc42ab5f4700;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2025-08-11T07:34:59Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|PH3PPF7E48920CA:EE_
x-ms-office365-filtering-correlation-id: 3e4c8d3b-1cc4-47d4-3b19-08ddd8b2bcdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?N20xVDdxSXlpZWxyNG42WGlaMmRiWFdENExneWxOZEVmQlVLNFBKWm5Ndlh6?=
 =?utf-8?B?bytxd1MxU2ExOENZRG9YR3RFaDZjWWg5MEVsblIrN1c1OUZXMVdQbS9XamFV?=
 =?utf-8?B?VzErdTYrZDloeTc3OVZPOWxXbWF5Smw3ZVBJQ3k3cEg3eW55T2xWQXppTm9S?=
 =?utf-8?B?UHoxNFppNGhIQzBPMXFsUzlHdWtpN01Ob0xzaExyc0M3S1pWbjR6QVFaRm84?=
 =?utf-8?B?dzRtT2NmTTRMVW45dzBUYmxXbktWMXdVT3JubWR5MElqZ0Rndmh2RDdRWjA4?=
 =?utf-8?B?dzRiY3B4dHVPbmZFY0xwMXZVd3kzbWpYdnRzbE1DVmZVUnVXWmxCbGgrTUJr?=
 =?utf-8?B?OE5lTCtnam56VEhtVkVxbWtoSkFCNVB4aUNPVm4xNDJSelBxbDlRNjF0dk01?=
 =?utf-8?B?Zm8rM3l4YTkwdmhXdWF1QXRSemVaa2d2TURuOU9OYjc4bmVBZVdpMTl3T3pM?=
 =?utf-8?B?Mm9TSytwNFBSdGVvdHRWWnM5b0lSZ1JITlRRWVk1cDlvM1lBN3BSVy9GRGlY?=
 =?utf-8?B?TjlaVnFZRHVheTc1VzV3T2E1V2laN25pM3RCVzg4TXUyODVwV0RoNHFZK0Fn?=
 =?utf-8?B?UFVNMFdjUmR5c3RQQmp2QW9LUVNNYUlLWForejRLcEpNbDR3b3ZKRmVGbGt0?=
 =?utf-8?B?YkVXaFN0NmVoVlVwRnpObUR4YUdHVDJ6MkF3UVZjTHVhdFJJT1Jodm42OFh6?=
 =?utf-8?B?ZnRIVWltMUJ4VlRUTlZkQzhrYWxoVld1a1hNZWhvT1duK1grVkNWc2lmVTNW?=
 =?utf-8?B?TFJuOUNMK2JNdHNqdnd2bkRHWlJJTkIzMUFmVDZiOUpTWkdoR1dzdXQ5djUy?=
 =?utf-8?B?Qitianp6WVM1V05vT0dsWVR6UnQ5bEoxZEgxSEUvSGtraWlCTmg3VCt4bGZN?=
 =?utf-8?B?YnYwdU95dTRnWDRDbU1mYnE5Ti9qR1RBZENUT0tvazkybDdGc1pteGo0bTJW?=
 =?utf-8?B?eldQTmsvdk1WRE1wZ2twSG1FUldocXFrMEROYjl3SWp6cXl4NVYyN0NVbUdM?=
 =?utf-8?B?S0NxVFhQUjF1ZTVEVGl1bVA4b3I1ZUo5YU8rQk9TK3I0TmZSNERyTm5DdG4v?=
 =?utf-8?B?Yk1rK3g3NkYwS0d0c2pIb0dSN09lWm4rOGd5N0Y2ZHBsbHFiKzVCVktudWNz?=
 =?utf-8?B?TGRXZkRZV0JZaGI5ZGI1QzNISk5CVDg2eTkvamVwY1ZVZEVQMkxEY3Y4d3Fv?=
 =?utf-8?B?MHVMMjNFZHF4UHRkR0FnL1JoSEUyZndLdlJtbUljQzlOWExhQ3hSYTRaVlky?=
 =?utf-8?B?Wkt2UnNKdmNMYVRjcEliWGJHUGZnZ29PQXV6aEZEbHg5YTEyVFU4NWxhZFI5?=
 =?utf-8?B?TEZJWWNybFEzT2NKRnkxL250aENoSmtOVjhsdDBiSWtESTZCVnFxWUNDcUpp?=
 =?utf-8?B?S0JVMFpySGdPWGU2d2lteU0yREw0MTgwMEh2dzQ2a3dSS3hGKzNJVFlLZy9u?=
 =?utf-8?B?REorNjRRYnZuekxOVm5jM0wwU1BoTTVHWUh3R0RwT3NmbXdHZU5RZlE2R1hw?=
 =?utf-8?B?V0ZxTW1scHNPLys1aVBHRE8wczd5ZWd6Y2xOUU56ZzhWWGpGK1RMRlRsY2xp?=
 =?utf-8?B?aks3RS8zK1psblcvOUtLbEdlT2NVcGRkRWpuRGFKa2NXTVdEVjg3WFBnRFZx?=
 =?utf-8?B?dDR1UEdWNXltdHBSYmZLYk1naVRnRlI5RXY1QU5RbWpheHcxeVppdzNNRVFh?=
 =?utf-8?B?dFQ5b0MydnRGQUY0dm9xMXdBa1luYWF6ODIrUkpWRzFpMDNNaTNUTzNMbVRM?=
 =?utf-8?B?cG1sZTg5Qm9lWXY3WTdmc2UveEY4UUVTYjZvWmtaSmRCUWl1ZnpBMlFuYmx0?=
 =?utf-8?B?eDJtK2VjR0FXakU3QVk2Z005bUxZVlJxNWVtUVZJaDNlanRQZmZYdHF6TDcy?=
 =?utf-8?B?Y2VFeEZOZEdnRHlZVElhM01ianJzWTNlZlNnWkhiYzJrY0VVSXROQmxKMU1X?=
 =?utf-8?B?RWdCNWthbHVaTGZSQ1ZvRHI1aER6UlFtRW9pdnVTTWFiZjEyN2xSWkJSQXlJ?=
 =?utf-8?Q?YL2CbB/QyEVXf4/nDNkUwWXov0CItw=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UnZMckRoT1Z6UHlkTzBDNTEwQnB3NU4wMGtrWTBZRUwyeGpYZGZ6WUo5eTh3?=
 =?utf-8?B?aVV3cTExU0lyVVY3UTJwRko4T3JUOTBmQ1g2dzczWHUyd0VyY1prcEExaENt?=
 =?utf-8?B?Z01oWUU0VWVsT1BWdFF2RGUwVEx5VjYyTkRqU0pRbTdBR01ka1crb3lCYzE4?=
 =?utf-8?B?WWVMaEVLLzZMTjFOOU44WWVSSFFPaWZnU3dCcjN1RGt4bXhnRXNxR0ZyQkJh?=
 =?utf-8?B?cm1IdmhTRzdBQmpEcmhmQ3orNlRyR0Y5VEw3cHRTa1M0MVRWam9ocHJuR3Fq?=
 =?utf-8?B?b21IL2xzNlpwNCtGb1ZyOGhyRHdVRlBDZ0pXY0p1ZWZFeHovS0wzQU1tbS9n?=
 =?utf-8?B?S2ZTdEJNekVLcDF6S2lyR0N6czk0OHBFd1ZKbmZJT2RmSS9CZkkwdjUwY0dP?=
 =?utf-8?B?cDJnUGdsdWZxMU5FaExNTE5NTlFqaWg0NnlRaXFUeVhHMXBXNldWc29HNXBY?=
 =?utf-8?B?eU4rd3Z0QTE3aHNIeG1uSUhuZGdwUm1mNTNNU0xpTXVqQnc4WC8rcTdpdmFQ?=
 =?utf-8?B?UytTR3A3ZnkrODZrQTR6cis2em1sUjFSaEFtWkRCZkZpNkpCcFRIbi9qY2U5?=
 =?utf-8?B?a0pjalEvcUljaUpESS8rSHBlZUNhNmNzVy9JOUJobW9QUHJKM3grSEdaRVQ1?=
 =?utf-8?B?OTFRaVA1V0J1b1RoTGgxUGJ3S0dmeE5iK2pmTVlidnc0NFFxRzJDS2duU09K?=
 =?utf-8?B?eHV2cXY5VituZ0ZCRk44bUFyU0FNb2hocEt2WmN0NE1mYVRnV1FZRWIzRVI5?=
 =?utf-8?B?cit2aFllWkx6cHNHSGwzRU1XRXNVSk1MaTlQUHQ3SmhkVks1U0VOa0FUVVcy?=
 =?utf-8?B?UU9BbTkrSDEvQW4wb1g3eUFBNmdIRVRaZjhkdWxzaThuL2FoNStIMGpCNE1C?=
 =?utf-8?B?bktvM0ZtUUlmWGE3WU94eTVvS0xoV0tzdDBzNlN3ZWUyMWZISjlnMmk2Q1Fn?=
 =?utf-8?B?WXNYT3YxbHZ1Lzk1L2xoaUxUR0V2cldDNFVNRXZkOHJ2RTJ0c0FjayttU0VG?=
 =?utf-8?B?UklVSXdMR2syMFdsejVuQWcrRWRQZW9xVVErb1hIMmZudU9QRGQwVCtjT1Zi?=
 =?utf-8?B?N3V1TTA1Tms1Sm5DRnpmRmd2QitDVDlNVDVJc1ZHZWtpd3phMjBPWXhjT2c3?=
 =?utf-8?B?Zkw4cHEwRDdKcWo5LytqTDlJalFjK29xNWMzK2dvTjFya3VKcm50MG1jUGRF?=
 =?utf-8?B?VEMvRGxzQTNWR2tYZEhkWmRGa0hLUE05N2ZjdXJIQXJlMVdVQXVpa3ZSK0g0?=
 =?utf-8?B?UHBhT1BnOGJmbDZFK2NsME9QUXlqb05odVVRdXo2b1FVZ2RLdW1YV2FuM1hu?=
 =?utf-8?B?NG5hQjFEOG81Zm43Y3RXblVkbUZ3UFlWQng0QjhEanNXWE50bUhDWm1jZVRk?=
 =?utf-8?B?TlZNQnkwQzBqMUg4a01EaU5IdUp5UEYzNzRHT1drOTZ3RXNZTGtzZ3VxdEZw?=
 =?utf-8?B?Q21PT2dRclhPQ2tQdmlXbDVsMHJmeDJPNVJDVHh4Sk5keGFsRjVCa2RGQU5T?=
 =?utf-8?B?YVp2VTJvYURUOUsyclhHcnVWN2w5VDE5NUxpYXByQ1JxT0FOcGw0SUpMZnR2?=
 =?utf-8?B?akFZOGRMR3RkRjRTTVlxR2hBaEdiZ3N3eUU3RXRPUnFGeTVSRWs2SFlLL3k5?=
 =?utf-8?B?cGtyOUhZNUcwNzR1RXRha3BQWWF5YjNvTDcvKzFQWkc2d3BxQWtQdXlKVGFY?=
 =?utf-8?B?bUtrNzFiV3JOTVBJYUxLdGpDWVZWUS9NK1ZRanFGN3lkTC8ya2FpMVcvelNZ?=
 =?utf-8?B?d3JGb3AxTXVZb3FWajVJblc1a3JmNzBvKzJFcjJmbW1wemtlTXgwZU9abVI0?=
 =?utf-8?B?dGk2T3ltNldpdnlhdWN3TG9DTzhha2hVazVad1ArUTRZL0NnNkc3d1B0NmVu?=
 =?utf-8?B?M3JJZEhWMzhRbEF2OUd1ajdoVjVCVkdzbWUvTmc3ZGJyOERYdWF6d09XYU9B?=
 =?utf-8?B?Z1N5akFLNEFIaUpUcE5SUW52TnlIRS9Cb0IrNzBVRFlzY3h4bkJuVzNaemhR?=
 =?utf-8?B?U3QvTjRkWDBwSTFEa3JHMEZzYjlUYmp1eFVnQlZ5TTh2TnRqNXpKM2wzSFEz?=
 =?utf-8?B?UEJ3NGR5NnA1aUhvQlkzcE9tbEM2OXRsL285WExjWUgxeFE2MFRoQzYxMm4w?=
 =?utf-8?B?bysvZExVY0d5WVFLc1llV04xa0VFMjgyT0hoL0VsK25iVlhxY3pnQ3l4Tldk?=
 =?utf-8?B?bUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e4c8d3b-1cc4-47d4-3b19-08ddd8b2bcdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 08:40:34.0776
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TfWkjK5jmxagAmiC8M/K4A77jwTfml+H+m5opKXQvB1LnkfseVCsuxOyXRq6cCuR64pwDqkpTeCgQL2us/lux/X7ohRff6LD37hzkfi/gWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7E48920CA
X-Proofpoint-ORIG-GUID: b4UcRBAd4tVh6rLoPk8mIU1NIsZyl4Ya
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA1NyBTYWx0ZWRfX0b7yAsT3HBz4 yYIkZZymzMBel38mEo8jfPyEWLAHt2Lum/KhgmZHitvxOmdFWUp16L13+B243mj6Uj6KtkY9pHH cpeg1G+Wi+3WfHuqK1klSdf3tUA6BfpjssldEishE5IFHNplskARBsgGy7wNq6LzLqsh2vt5QGG
 SzVoJYvxpNPE/oCteAgpheU+uCfRsZfGObZ9KRKD5iPqECcGIjR/XDwnr56f87UCxP96YVN99aE tCEngZ+HTP1DFCXf8LX1wY/NQrct8Fhej8smABPtzFF1sUX5Q6t4WBLQgNHiCA9o3ZPE6XGCF01 5DQA+HZV3majxIdfHNu8DlBLB8D913Wq0C8Mtbxmx+3LvEUbbO8sihwAYb2Y9ShJKQg4Ab0Uqj7
 nsXAkI3E6vEj8dNxAE/3SyirdDiqx9Uf3uoAyxVk8Ft5jC4Euu15HXV18c5OM2hRcGoI+Alb
X-Authority-Analysis: v=2.4 cv=fsXcZE4f c=1 sm=1 tr=0 ts=6899ac85 cx=c_pps a=JAdTqqN4+A8LnUbrk8iLvA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=2OwXVqhp2XgA:10 a=ZPWZ4rD8_x8A:10 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=hGcZz5RV6qKSX6AoX9kA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=fVqERNl3j6n1tWjHcWwA:9 a=uycSGW47dfwgaCxk:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10
 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-GUID: b4UcRBAd4tVh6rLoPk8mIU1NIsZyl4Ya
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 spamscore=0 adultscore=0 mlxscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508110057
Message-ID-Hash: MXLC3PUFKXUXW4WCUAPKOPGI2QP47CPL
X-Message-ID-Hash: MXLC3PUFKXUXW4WCUAPKOPGI2QP47CPL
X-MailFrom: prvs=7318161dd9=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using Replay block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G2XLRSLSU56NRPBFJWPOXMMGZJA33KFJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============1014967321476413856=="

--===============1014967321476413856==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB517913112EF42379F0372DD79928ACH0PR10MB5179namp_"

--_000_CH0PR10MB517913112EF42379F0372DD79928ACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I haven=E2=80=99t seen this issue before; however, I=E2=80=99m not using th=
e X410 too often. Is it the same effect with a different FPGA image? You=E2=
=80=99re using UC_200, we mostly use X4_200 here.
A good check of the replay block in TX direction is the tx_waveforms.py exa=
mple. It has a dram switch, so you can easily switch back and forth.

/Martin

From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, August 5, 2025 4:22 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Using Replay block on X410



Hi,
I recently received and starting using an X410.  I noticed that my custom s=
oftware does not work when using the Replay block for playout in the transm=
it path (Replay=3D>DUC=3D>Radio). This software works with all of our other=
 USRPs including N310, X310, and N321.  I don't get any error messages, but=
 the transmit light simply does not turn on and there is no RF coming out.

I then tried rfnoc_replay_samples_from_file (see command line and terminal =
output below).  This also does not show any error message but the transmit =
light does not turn on and there is no RF.

I then tried tx_samples_from_file (see command line and terminal output bel=
ow). This produces an error message "Cannot forward action tx_event from 0/=
Radio#0:INPUT_EDGE:0, no neighbour found!".

Note that I am able to get RF output (and Tx light on) if I use the multi_u=
srp object (which sends the Tx samples real-time across the Ethernet link).=
 I am also able to get RF output (and Tx light on) if I use the rf_siggen_g=
ui utility.

I'm wondering if anyone can confirm that they are using the Replay block as=
 a playout memory on the X410.  Any ideas what may be happening?

Rob

Command line and terminal output from "rfnoc_samples_from_file"
chisum-gnb@chisumgnb-Precision-5860-Tower:~$ rfnoc_replay_samples_from_file=
 --freq 5800e6 --rate 30.72e6 --gain 50 --file ~/Documents/waveforms/mtone_=
100_0p8_1.bin

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.8.0.0-0ubun=
tu1~noble1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3498DB3,name=3Dni-x4xx-3498=
DB3,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,mg=
mt_addr=3D192.168.20.2,name=3Dni-x4xx-3498DB3,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
Using Radio Block:  0/Radio#0, channel 0
Using Replay Block: 0/Replay#0, channel 0
Using DUC Block:    0/DUC#0, channel 0
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Active connections:
* 0/DUC#0:0=3D=3D>0/Radio#0:0
* 0/Replay#0:0-->0/DUC#0:0
* TxStreamer#0:0-->0/Replay#0:0
Requesting TX Freq: 5800.000000 MHz...
TX Freq at Radio: 5800.000000 MHz...

Requesting TX Rate: 30.720000 Msps...
DUC block found.
  Interpolation value is 8
Actual TX Rate: 30.720000 Msps...

Requesting TX Gain: 50.000000 dB...
Actual TX Gain: 50.000000 dB...

Replay file size:     2000 bytes (250 qwords, 500 samples)
Record base address:  0x0
Record buffer size:   2000 bytes
Record fullness:      0 bytes

Emptying record buffer...
Record fullness:      0 bytes

Sending data to be recorded...
Waiting for recording to complete...
Record fullness:      2000 bytes

Issuing replay command for 500 samps in continuous mode...
Replaying data (Press Ctrl+C to stop)...


Command line and terminal output using "tx_samples_from_file"
chisum-gnb@chisumgnb-Precision-5860-Tower:~$ tx_samples_from_file --freq 58=
00e6 --rate 30.72e6 --gain 50 --file ~/Documents/waveforms/mtone_100_0p8_1.=
bin

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.8.0.0-0ubun=
tu1~noble1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3498DB3,name=3Dni-x4xx-3498=
DB3,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,mg=
mt_addr=3D192.168.20.2,name=3Dni-x4xx-3498DB3,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
Using Device: Single USRP:
  Device: X400-Series Device
  Mboard 0: x410
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: 0
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: 1
  RX Channel: 2
    RX DSP: 2
    RX Dboard: B
    RX Subdev: 0
  RX Channel: 3
    RX DSP: 3
    RX Dboard: B
    RX Subdev: 1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: 0
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: 1
  TX Channel: 2
    TX DSP: 2
    TX Dboard: B
    TX Subdev: 0
  TX Channel: 3
    TX DSP: 3
    TX Dboard: B
    TX Subdev: 1

Setting TX Rate: 30.720000 Msps...
Actual TX Rate: 30.720000 Msps...

Setting TX Freq: 5800.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 5800.000000 MHz...

Setting TX Gain: 50.000000 dB...
Actual TX Gain: 50.000000 dB...

Checking TX: all_los: locked ...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.

Done!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!
chisum-gnb@chisumgnb-Precision-5860-Tower:~$

--_000_CH0PR10MB517913112EF42379F0372DD79928ACH0PR10MB5179namp_
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi Rob,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">I haven=E2=80=99t seen this issue before; however, I=
=E2=80=99m not using the X410 too often. Is it the same effect with a diffe=
rent FPGA image? You=E2=80=99re using UC_200, we mostly use X4_200
 here.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">A good check of the replay block in TX direction is =
the tx_waveforms.py example. It has a dram switch, so you can easily switch=
 back and forth.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Rob Kossler via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br>
<b>Sent:</b> Tuesday, August 5, 2025 4:22 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Using Replay block on X410<o:p></o:=
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
<div>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I recently received and starting using an X410.&nbsp=
;&nbsp;I noticed that my custom software does not work when using the Repla=
y block for playout in the transmit path (Replay=3D&gt;DUC=3D&gt;Radio). Th=
is software works with all of our other USRPs including
 N310, X310, and N321.&nbsp; I don't get any error messages, but the transm=
it light simply does not turn on and there is no RF coming out.<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I then tried rfnoc_replay_samples_from_file (see com=
mand line and terminal output below).&nbsp; This also does not show any err=
or message but the transmit light does not turn on and there is no RF.<o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I then tried tx_samples_from_file (see command line =
and terminal output below). This produces an error message &quot;Cannot for=
ward action tx_event from 0/Radio#0:INPUT_EDGE:0, no neighbour found!&quot;=
.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Note that I am able to get RF output (and Tx light o=
n) if I use the multi_usrp object (which sends the Tx samples real-time acr=
oss the Ethernet link). I am also able to get RF output (and Tx light on) i=
f I use the rf_siggen_gui utility.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm wondering if anyone can confirm that they are us=
ing the Replay block as a playout memory on the X410.&nbsp; Any ideas what =
may be happening?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Command line and terminal output from &quot;rfnoc_sa=
mples_from_file&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;;c=
olor:blue">chisum-gnb@chisumgnb-Precision-5860-Tower:~$ rfnoc_replay_sample=
s_from_file --freq 5800e6 --rate 30.72e6 --gain 50 --file ~/Documents/wavef=
orms/mtone_100_0p8_1.bin
<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.8.0.0-0ubun=
tu1~noble1<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3498DB3,name=3Dni-x4xx-3498=
DB3,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2<br>
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,mg=
mt_addr=3D192.168.20.2,name=3Dni-x4xx-3498DB3,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.<br>
Using Radio Block: &nbsp;0/Radio#0, channel 0<br>
Using Replay Block: 0/Replay#0, channel 0<br>
Using DUC Block: &nbsp; &nbsp;0/DUC#0, channel 0<br>
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
Active connections:<br>
* 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
* 0/Replay#0:0--&gt;0/DUC#0:0<br>
* TxStreamer#0:0--&gt;0/Replay#0:0<br>
Requesting TX Freq: 5800.000000 MHz...<br>
TX Freq at Radio: 5800.000000 MHz...<br>
<br>
Requesting TX Rate: 30.720000 Msps...<br>
DUC block found.<br>
&nbsp; Interpolation value is 8<br>
Actual TX Rate: 30.720000 Msps...<br>
<br>
Requesting TX Gain: 50.000000 dB...<br>
Actual TX Gain: 50.000000 dB...<br>
<br>
Replay file size: &nbsp; &nbsp; 2000 bytes (250 qwords, 500 samples)<br>
Record base address: &nbsp;0x0<br>
Record buffer size: &nbsp; 2000 bytes<br>
Record fullness: &nbsp; &nbsp; &nbsp;0 bytes<br>
<br>
Emptying record buffer...<br>
Record fullness: &nbsp; &nbsp; &nbsp;0 bytes<br>
<br>
Sending data to be recorded...<br>
Waiting for recording to complete...<br>
Record fullness: &nbsp; &nbsp; &nbsp;2000 bytes<br>
<br>
Issuing replay command for 500 samps in continuous mode...<br>
Replaying data (Press Ctrl+C to stop)...</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Command line and terminal output using &quot;tx_samp=
les_from_file&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Courier New&quot;;color:#9900FF">chisum-gnb@chisumgnb-Precision=
-5860-Tower:~$ tx_samples_from_file --freq 5800e6 --rate 30.72e6 --gain 50 =
--file ~/Documents/waveforms/mtone_100_0p8_1.bin
<br>
<br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.8.0.0-0ubun=
tu1~noble1<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3498DB3,name=3Dni-x4xx-3498=
DB3,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.2<br>
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_200,mg=
mt_addr=3D192.168.20.2,name=3Dni-x4xx-3498DB3,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.<br>
Using Device: Single USRP:<br>
&nbsp; Device: X400-Series Device<br>
&nbsp; Mboard 0: x410<br>
&nbsp; RX Channel: 0<br>
&nbsp; &nbsp; RX DSP: 0<br>
&nbsp; &nbsp; RX Dboard: A<br>
&nbsp; &nbsp; RX Subdev: 0<br>
&nbsp; RX Channel: 1<br>
&nbsp; &nbsp; RX DSP: 1<br>
&nbsp; &nbsp; RX Dboard: A<br>
&nbsp; &nbsp; RX Subdev: 1<br>
&nbsp; RX Channel: 2<br>
&nbsp; &nbsp; RX DSP: 2<br>
&nbsp; &nbsp; RX Dboard: B<br>
&nbsp; &nbsp; RX Subdev: 0<br>
&nbsp; RX Channel: 3<br>
&nbsp; &nbsp; RX DSP: 3<br>
&nbsp; &nbsp; RX Dboard: B<br>
&nbsp; &nbsp; RX Subdev: 1<br>
&nbsp; TX Channel: 0<br>
&nbsp; &nbsp; TX DSP: 0<br>
&nbsp; &nbsp; TX Dboard: A<br>
&nbsp; &nbsp; TX Subdev: 0<br>
&nbsp; TX Channel: 1<br>
&nbsp; &nbsp; TX DSP: 1<br>
&nbsp; &nbsp; TX Dboard: A<br>
&nbsp; &nbsp; TX Subdev: 1<br>
&nbsp; TX Channel: 2<br>
&nbsp; &nbsp; TX DSP: 2<br>
&nbsp; &nbsp; TX Dboard: B<br>
&nbsp; &nbsp; TX Subdev: 0<br>
&nbsp; TX Channel: 3<br>
&nbsp; &nbsp; TX DSP: 3<br>
&nbsp; &nbsp; TX Dboard: B<br>
&nbsp; &nbsp; TX Subdev: 1<br>
<br>
Setting TX Rate: 30.720000 Msps...<br>
Actual TX Rate: 30.720000 Msps...<br>
<br>
Setting TX Freq: 5800.000000 MHz...<br>
Setting TX LO Offset: 0.000000 MHz...<br>
Actual TX Freq: 5800.000000 MHz...<br>
<br>
Setting TX Gain: 50.000000 dB...<br>
Actual TX Gain: 50.000000 dB...<br>
<br>
Checking TX: all_los: locked ...<br>
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
<br>
Done!<br>
<br>
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!<br>
chisum-gnb@chisumgnb-Precision-5860-Tower:~$ </span><o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB517913112EF42379F0372DD79928ACH0PR10MB5179namp_--

--===============1014967321476413856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1014967321476413856==--
