Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6350DAADBC6
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 11:47:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E8423862A8
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 05:47:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746611227; bh=d9NnunY5R72S0nhPx7JITeO2kYgV1ITIFFkqerzJGII=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OvGvQS0odTi6wQWO2xj/CTYWb7y8xLMOa4LBL04ROoOdQWiZjVd8qglqkDfnge1XI
	 mKRivZG+7HlAcOOOc7Oq1YRsTOAPOVqwLl6kd9qBsqT7m0U6yhB+zNNH38YHLLhRrz
	 GioSqmK6qvwleWK4DonsdJwV+F5sIam8N6G2qn0xbZSnEX8JIlFPaQnCXDG8t0ePxb
	 VJngbusFtDKNMFqvG3LSoOzaQtODALNLGmEOMgLvw/WJMcfR9EXBDTFkFwFA8Oayjr
	 vMm11RyxxIXFGWjZ5Py67hUOfFOJ3w25MQCTbTGF64JlVE5IMGS/UmBKnCh8qIVCH6
	 wJUkn0fBNeaMg==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C84F3862A8
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 05:46:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="uZpKR7iO";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="oFnEaTv0";
	dkim-atps=neutral
Received: from pps.filterd (m0144092.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54797a2m021528;
	Wed, 7 May 2025 09:46:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=kK0UCjjmDuKHVCusDlqnMDgXw1Aa
	xu1tWt96AOycQvY=; b=uZpKR7iOUV1w4FPxZFb1oyOkgfyRYI8XJdTMHHuLd53V
	jTYswdhw40xEuk5T06wVvVNC1zI23uglAabgdOIWZf0Ay0ZnU5AWziwn6AxF8I+L
	ZQW4vqmtr4JuuPB25bfQvAlKw81D8IpyMs+Zl8MvOxXSRXh2dysT+tbZEd2BqRQh
	FSZpPZpruiBKhRlScKoc7MGyvEdEOc0/I9pMGwhSNJASyovPAHb+gSEuH95fRvZ5
	F8cTN3URkMYPdElCyXHwrCIoG0e5xlFPJWowixOJgi20CLwed3fBdHFNbfTaeG7A
	c/Db9Lmjuge0Ce0YgdAVjvKZZSezonRbL4KCLDli9g==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azlp17010019.outbound.protection.outlook.com [40.93.12.19])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 46g4ksgnrh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 09:46:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HgKsJgIjvIkExU0vQGxWoUHPKJpGIL/zjHh+3XadnKfdzmYnMetdrK+FmnXHtLIE3IC0QXQeUyDV02pDOK9IKBoEaAFpddUp4wbQb86R7zQs7vart5wCDuYn3ue6dB8wCisgRC9gdCA8FkiqJHiP9HNMNj9Kixg9zT0fsbK9h4FJ8sJ9iPltUjHs3VOeJ1PAh5h5eXGJ9CfzhIheRD1vRZ+6EjFZ6VtRKs9WPcAv8nBbPJXmajhV+MUqaXyPXlFsMWAqRdffoWsAplCDC8dxTdwPfaGAjg2kczMoWsEuuJS/A59UiPUFETTIOoTRgRVifd2RwExE9LU2uPyZuehc/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OzEJJBX0yQiNON5V0xpZNAohnSKgP7a+k0FOmb8goW4=;
 b=DGDejVwY3NNtWMUl4PShQSVGdkBxc/SrsKYCrqmVOzYmVCirnKUWya+YjWGOQpubItR8L54DWdR9p9DwLTSwMdN51SCfJA7Ky7WEcakic9kfg3zAYJhTBgFt/nP179OwXN0ExNRwlM/euwFaAH+5NJbt2LgkZb+Zr1odRmFO4m0DOQe9VwHyd4enm8mohO36pPU7wWP819HPYCjW4PEl8smM9UFvXHxR5z9tBAsqkA87YKEGYF+v0gts2axWTqx5OpmCsZWGINk98+8+8ZgLsHO91wkNk6LqDIHF+SvZN77aYJXOWwdHrXB+xdeQtRlmmKK6kBMgps1PVW0m7r5lLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OzEJJBX0yQiNON5V0xpZNAohnSKgP7a+k0FOmb8goW4=;
 b=oFnEaTv0UBNYV1PNysepLTWhZA2OjI537jsDRFuLIS2Uglpcvj5WxG8JK8ZBeEuZ/4lobAlCD2GYV5afOmwGPh6J8TKWsxHC9KJhujj6UBfvYIWuzUxXHF0D8vYrnJcyK8aka9wo5/LzJ4iJ15QfQFhZwyCoYsS+xM1YvB16PyUnJjnWBee8wLwTinPPBlBoKLNb9IWzwo5Ogn3hqkgKUeoxwbsgmWMZWJtw1emssw2fqfZiQRn2wxN9pg1d2tY7YTYDwKppeOt/rcrw78d4xtVEclIkfAbMsNooBveYJxDPE8vhr6DO7if9Ow+aDms5jopUmT3GR81TgTIxRurG5Q==
Received: from MN2PR10MB4095.namprd10.prod.outlook.com (2603:10b6:208:11b::10)
 by SJ0PR10MB4463.namprd10.prod.outlook.com (2603:10b6:a03:2af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 09:45:54 +0000
Received: from MN2PR10MB4095.namprd10.prod.outlook.com
 ([fe80::73e7:bfad:c778:d9bd]) by MN2PR10MB4095.namprd10.prod.outlook.com
 ([fe80::73e7:bfad:c778:d9bd%3]) with mapi id 15.20.8722.018; Wed, 7 May 2025
 09:45:54 +0000
To: Bill weedon <whw@appliedradar.com>,
        Leech Marcus D.
	<patchvonbraun@gmail.com>
Thread-Topic: [EXTERNAL] [USRP-users] Re: B205mini Discovery Issue
Thread-Index: AQHbvsk/0Phk8laXG0yQN+BkIEjXBLPGIfWAgAAUsYCAAA1oAIAAL5cAgABPcXA=
Date: Wed, 7 May 2025 09:45:42 +0000
Deferred-Delivery: Wed, 7 May 2025 09:45:31 +0000
Message-ID: 
 <MN2PR10MB4095620E255CF2B6123511EBF588A@MN2PR10MB4095.namprd10.prod.outlook.com>
References: <02c3a25a-764e-4ed2-9189-863c8498468e@gmail.com>
 <D1A440D8-65FB-4610-B903-2AD85EE5CB09@appliedradar.com>
In-Reply-To: <D1A440D8-65FB-4610-B903-2AD85EE5CB09@appliedradar.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=62c2e13a-9e69-4781-b399-27b6036e03b1;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2025-05-07T07:19:11Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR10MB4095:EE_|SJ0PR10MB4463:EE_
x-ms-office365-filtering-correlation-id: b878ad72-5a12-43dd-aac5-08dd8d4bf5b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|1800799024|376014|366016|38070700018|7053199007|13003099007|8096899003;
x-microsoft-antispam-message-info: 
 =?utf-8?B?WUt1cUlyWUlGdHV5ZXhSTlR3K3pCQVIyeldUc043TDBDbjV2bk9HV2NHWnJS?=
 =?utf-8?B?SU55WDJNNTZCVkorVFZjRFhCNVVzdGdnMGFibW5ZbmUrN2FxNE42SUtmUnBz?=
 =?utf-8?B?T0JnM2pQZ0VLb0krSDBvNkh1aU5pVWhBRHQ3UWY5ZUZscmIrZGZvcHI4KzdS?=
 =?utf-8?B?dFlqV1VzMWZESDR4NlJmMGtCUldzNTNCRHcyN0FhSC9CK0RCY0NOemt1NFZm?=
 =?utf-8?B?VjR2Nll5VEdlcG9XRDZKVjBxdW9kZm9BUStyeDRJWGg5VlZaNDdjRzlobnNB?=
 =?utf-8?B?bW41TUNSclI4RTUvd3VXYlhPcnpYUnE5QXA1ZlBEbUJxQlRYbmY4OVZ6Z04x?=
 =?utf-8?B?cTVTQnlMQkFOdzNPNnBsdE9Dbnk4c3JoaEZiWVpCR1g4YUtoWC9XclpUZzNp?=
 =?utf-8?B?ZmlDclM1Nno2M0RXMDdZZWZQQVl5WDRQV1BVVlNiL3dRVWlQUjRGb2FWM0FE?=
 =?utf-8?B?Uk41eDREdWw3dDB2K2xKWHJndjk5RGpBb3VneUZXQ09ra2M3bmhsMWRPYWFO?=
 =?utf-8?B?emFyZlc5cXM5N25vUVhzdkFXdjVyeHc5VTlvVktINEtyN28xQ2lhcXhIeC9l?=
 =?utf-8?B?bHVvOFhYeDd1N0dxSHQyVUVLYjBMWEtVczJyaTVVaHoxRUxqVEhVaWtvWXhO?=
 =?utf-8?B?aTdGSTZpUVZLUzBGTGZYV2hCVTJpTVB5Ykp3NjRWZ3FFRG44R2E4RjJvNUds?=
 =?utf-8?B?Y1hyRUZsb1ZTcTQ5ZGJzdGV6aVhjWkd2clpUZXkzb1RVdHp1UDhBR2xSNE93?=
 =?utf-8?B?VzFTVWM1eER0QnJjUTBpaldScy9SMlZoYm1wc0V1UnBFME94TEh5QnA3UGRC?=
 =?utf-8?B?K3RQb29aR2dKM1dJb1A2ZlgvMEF1TnNrdXh5ZGhJYnNmYWszMFJFVlN6T1dF?=
 =?utf-8?B?Y21UbVF1UzhrVy9ITUhhRkhGZmFrdkhRR3hmMEVCb0VSUGl6ekRIMnJnOEEz?=
 =?utf-8?B?OThTajlzTTJycmY4UFgzU3o1bXd2ZVcvZ2w2QXg5eWJSWDhQbm56LzhHdjF0?=
 =?utf-8?B?dnZPZWhIbFBkSmdLYlk5QVhWdzJHQlY0TE53WXh1NFAwWi9nZE5pTmFDbGJT?=
 =?utf-8?B?cUN0MHpvVW5xWHdvL2N3N1pXMTlXaXMzN2oxcGloNDNWdzhvTDlWQ0xYVDJT?=
 =?utf-8?B?MFdmNWFwTGMrQ25nVG56cGpDcmtLUURRdmtKUHYyaC83Rk5PMzlEMVZPcnNT?=
 =?utf-8?B?Q0JHZlZqWTNhWjVzMVlWY3Y5cEVEc2UvVFIxcVczZS9ZdVR2bmQrS01lLzFO?=
 =?utf-8?B?Ni9IeHB5aWhKSTlRRVkxVEZMUHo1RTJjWG90cmJQLzhydHc5bEdsa1JIWTYw?=
 =?utf-8?B?RFZlcUVmOWZwZ0grNHBLMGw0UjVVZEk3THhhTURhSSsxVi9VMk5PQ1M0ZFhj?=
 =?utf-8?B?N2JBMForSmk4VDlwQnI5bDFyNHpWMU43cnV5am43K3RtaW1aVFRmVlJJTXhn?=
 =?utf-8?B?NEI5c2JaNXNTRVhyT3pJSEdlbE5NUG5jcksvUGJKTGxKcVVERmhVZ3B2cWJp?=
 =?utf-8?B?bVltQUxudmgwNjU5OGpRWEhDTUdldXlqc1VwbFhPa3VoQXdLdk5ZQmlnRWlV?=
 =?utf-8?B?anFxZkFybHIvV0N1TUZHQ1J6RjgxYmdvUlU3VDcrZzhSU0FzL2ZyNHk4R3Zk?=
 =?utf-8?B?QnNsTEMrckhCclNadEhaVUJSbGNmOER3T2s2Yk03UEdPYkpVUGFUdTZMbG5C?=
 =?utf-8?B?a0dsR3pmd2FoemgvbnYrcnR2clNwSVUzZUpqUkh5Ymc0NWF1UTNwZ1pTNEIy?=
 =?utf-8?B?dm9taEJrWS9aQnRnZmNyVy9VdVR4dzVvZzdYdUhVZ1JzLzQycVEwaC9FNTQy?=
 =?utf-8?B?Rzk3Mkp1Q01oWDlsaDRCRHpsUUN4cnUxVmd3UnJhYi9RN2ppZ0paYTlBU2po?=
 =?utf-8?B?cE9obENsYnljZXQ3TlIxVS9MUlFlVEp0MFhCajFXZWIycjliYWhXTCt6QmZ6?=
 =?utf-8?Q?OXEY/bNaStE=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4095.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(38070700018)(7053199007)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SDFrMWhTZDZrbHcwQVdFQVJwc3BSSEFleE0vWFErUVR2dWx5dU5tUzc2MGRK?=
 =?utf-8?B?MlpiUUNpNmR4dEhUYXlPYlFuenFLYzdURlRra25tUnFBN0o5S3pRakJQT25w?=
 =?utf-8?B?M1Z4Y3BzTkRTek5FZTZwcVY4UVhrSnR1Q0lMNVViKytOeDVZMG9sNDF1KzhQ?=
 =?utf-8?B?Q09oR3VudXJBZGxXQ0UzSm53aDJOeE0rcm5CS05ndmpqTndTdlVFVEZhekk3?=
 =?utf-8?B?VDBqbjB0YzJZenI4cDg3MFp2L3VQenFaTHJHOElKRUhYTmZ0SUtnamFCYmJz?=
 =?utf-8?B?ZnNyZVRlV1VQSGFJSWYxNldSd3dFUTBXdlhSVGI3c1gxckc4d3RDcjQ2eCtO?=
 =?utf-8?B?K29MUHhVck5NSmZQckpwUzhJTjloS3pqcTVkbFdVV3VwcHVCcWkwdXRJNlpT?=
 =?utf-8?B?THJmRG5GYUttekpRcFpiaUs1WUkyejVtZXV2VGpiUitkd28ycy9YdDB3L0JZ?=
 =?utf-8?B?WHBnRHdQRXhpaHcvKzNRY1ZFSVdKM2lvWDMyNUxERnpqZXI3R2NHc3pzMmdG?=
 =?utf-8?B?OWFMZ3c4c241dUF5OFo4NmZiWDlHR1VBb3lHQ1JHKzQ4MWNERTJGMVNkM2Nx?=
 =?utf-8?B?VU45NGFxTnZGb2VyOUVCQ3QvQzJLSm9SYjdNVXZPS1ZPTGN1YnB5bW1wc0VF?=
 =?utf-8?B?WnN2K21raTlXa0N4RHI3REV2VG9wRVk2RVZnWWJzOEErNTdYUDZDcEpEaHh5?=
 =?utf-8?B?bnJBdDdGYUE1QjFreFRJWmw2N2tJckEwKzJvMjdPU05LS3owVjJDVE8xUWsw?=
 =?utf-8?B?Q3hMZ2xFK1VwVS9sRlJVSWRmSzBnWmdoL0xkQXhNVDJpVmZDVC9EY3NUTG5h?=
 =?utf-8?B?Ri9YUllWcExYWDBuRnAxenZwangydEpUTE5WMi9qZUhId3NEbi9yTldGMzls?=
 =?utf-8?B?TW0xVE1nZ0ZaK3pjV01OTHMwVUdIMVZOdmg4ZTZzWnN0bVEwaE92Y3oySmNV?=
 =?utf-8?B?bW5XbWtPL01QNTBkU3NjT1NHZ1BMUWdaRTBhS1NMa2xxVlZ1QUYxb2pEVHFV?=
 =?utf-8?B?OUt3K2hjcHdsSHZXMDBVK3cyMTFsVFNPVGxDb3A5cjZHYVRVWjVTbmtZa1Qv?=
 =?utf-8?B?NEkxb3dOYzhXb1ZjMEZMbHlnZ3RnU05zQmxBSmEwVjBYQ0RjWDdNVkhFd29C?=
 =?utf-8?B?UHNYN3U4ekVkTEJ2NkV6NVVXcW1zeEhhaFFLNUp1Vk52Mm9jTGRmaS9McTM0?=
 =?utf-8?B?TlJPY0NrTnBVT0xOODhhQi81eEJScHFLbkthV2FyV3NlbVdnTGxMejJRL3dq?=
 =?utf-8?B?NlQvTEdKbituUkJOOEtISWJPdkpCVVh5OXFTNW9OczNQaHR5NWJkQnNrcHlL?=
 =?utf-8?B?Y09QSzRlUGJidDl2ZXJ3djNZYmpGZkpJNEZ0WmxzK0IwbHBaQXBZMUN6alBR?=
 =?utf-8?B?aEREN0FmRndXK2lnT1R5MHdqOElpM3NQSFdVck5EY2ZRYk8vanZlVEtNck92?=
 =?utf-8?B?dk5GT2J1QjhTS3cvVjhUbFl0VlZiUEUxbXFGRk9BUCtUb3lwc3RXaGYvOWtv?=
 =?utf-8?B?ZzA2ejFDZFZSZ2xEZVZ1T0ZCS2pWODFSdGdlaWUyUkhnYk9PRmVJTHFEYTNB?=
 =?utf-8?B?SmU5SnlOSVhCYWw0bkdIRW84ejl5ZG56djc5TjE3TklQaHBmdHg4UXA3M1Fw?=
 =?utf-8?B?MGZVZjVYU1d1L3hnTnBPWHpiK3NVcmxPRW50RE1jM2JyOStOT2w4bWZCYkRx?=
 =?utf-8?B?SUwwcWx1RzRuNDZEYll4K3VjYzE0eldpWWJmWGNFcm9DcHJlb04xajZBQmha?=
 =?utf-8?B?Zy8rcUN0dCtSVmdKTUxkWGFRekYyS3pyeTRlaG9vdVh1cnZ3SEFKMm0zUWQr?=
 =?utf-8?B?dWtHZWtWMHZlL2lEQk9JR1lxLzBVcSt4RXJRWkg4WnNDb25kTWlvSEFoVXpp?=
 =?utf-8?B?RCtGOHpXR3FtbEtudVdnN1FaM1gzZXo5QjJaSEh6RHM0bm9HOXJNOEdTRUl5?=
 =?utf-8?B?QWJ2ZmFhZkNVbHhxMDZJRDZOQzJIWnZWclEyMUQ4S0ZJM20yT1kxL2JKenFR?=
 =?utf-8?B?UWd5SUZBOExsRy9BcXJLQnNtRnpzVDRnTStqQmxqNjYyT09hOGpzM3VuYjJO?=
 =?utf-8?B?dWdwaUQxTVd5QlUyTjdlODRTcE5SRkIrOWJ0bWEydHFMYkhqRTBMd0tFNEJ2?=
 =?utf-8?Q?E9quBE8O2k4HYoFVINPmxy/vB?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4095.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b878ad72-5a12-43dd-aac5-08dd8d4bf5b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2025 09:45:54.0580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OP4Nn7dnwf2mENfLqw1/7IOeBFnwLr/wmrjrdKXvIkU7pDWR2N0w1OhVAtx0RJPJvyOFvsNJK3Xfv8SkGYuivg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4463
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDA5MCBTYWx0ZWRfX7q/fKmpTqacS WsyhS8GYCyvm5HL6NiK3kSdOs8FTLdBy2GP3SLSBpId9Sz9uh9Xa44yZ5aTuu1ROLu7pdGTI5w0 /Yy5Qm0/iuNbtLvZxpkwLB6D8bxtEQXR0g2RX0P6SdzjmIRMnWrOAcpiRc+Ic3EsOgE+ohx1Her
 bBYAaMTlRySwrU8qXd09dbJVtoqPPJfonXp4kE+GRFZbOtBYlJsKgJ0NlHUSc+hACUICa5ao17E rreEIgNqf2ufpPEYGfVfSuNB69rP56EhcBhtwvnObD4AeX8gEsbKMEhnq104+BomRgH062dI/5j lSo9R78J2P8Tm7ltFl+91aoWexzVtVb8rBiTZQaiO6egadLAznNX5YTOsuU8t7Hmh3/Yd42Vvli
 5qfvx6Krsyig9vusFT1wnPEIebfCck6bg9jUoxLgLPviFuD4Ld78JK+UbeBnqqeNukT5am3j
X-Proofpoint-GUID: 18oup4EmPgKHeaNCT2oms-S-dFLgUfPt
X-Proofpoint-ORIG-GUID: 18oup4EmPgKHeaNCT2oms-S-dFLgUfPt
X-Authority-Analysis: v=2.4 cv=UuFjN/wB c=1 sm=1 tr=0 ts=681b2bd8 cx=c_pps a=b4GTUaH8bIYRMqSiyTmTYA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=dt9VzEwgFbYA:10
 a=ZPWZ4rD8_x8A:10 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=uherdBYGAAAA:8 a=aaKrielhAAAA:8 a=pGLkceISAAAA:8 a=_MJZTeksENuXJgiWm2sA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=k1dGIrF6rXNWBzOD_0sA:9 a=lBoV-8sdZFmBDoFV:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=lqcHg5cX4UMA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=OlC13FbbfZz3gMzBw2K7:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_03,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 clxscore=1011 mlxlogscore=999 spamscore=0 mlxscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070090
Message-ID-Hash: NHXJIZSHMLS3K43TLAI26OR6NOBMZOHV
X-Message-ID-Hash: NHXJIZSHMLS3K43TLAI26OR6NOBMZOHV
X-MailFrom: prvs=4222ef8d29=marian.koop@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GAZPJXY7SD7EN73RK2VBNSS2MYTXN36I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Koop, Marian via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koop, Marian" <Marian.Koop@emerson.com>
Content-Type: multipart/mixed; boundary="===============8100136725213926860=="

--===============8100136725213926860==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR10MB4095620E255CF2B6123511EBF588AMN2PR10MB4095namp_"

--_000_MN2PR10MB4095620E255CF2B6123511EBF588AMN2PR10MB4095namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Bill,

Sorry to hear that you have trouble with your B205.

The B205mini is shipping with a default FX3 bootloader, that is not modifie=
d/updated by NI/Ettus.
Q:

  *   Which Linux Host OS are you using?
  *   Are you using an NI/Ettus supplied USB cable, or a 3rd party one?
  *   Does the plugged-in device powers up (onboard LED is lid when device =
is plugged in)?
  *   Did you try USB 3.2 Gen1 ports (ports rated only for 5Gbps) instead o=
f USB 3.2 Gen 2 ports (ports rated at 10Gbps)?
  *   Is the behavior identical on USB2 and USB3 host ports (to simply chec=
k if the device gets detected on USB2, no USB =E2=80=9CY=E2=80=9D cable sho=
uld be needed)?

Regarding sideloading the firmware (and bootloader).
I recently was successful sideloading the standard B200 firmware (usrp_b200=
_fw.hex) via JTAG using an Olimex ARM-USB-TINY and OpenOCD.

Regards,

Marian Koop


From: Bill weedon <whw@appliedradar.com>
Sent: Wednesday, May 7, 2025 4:35
To: Leech Marcus D. <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] Re: B205mini Discovery Issue




Seems we=E2=80=99re on the right track here. $180 programming cable and I a=
lso found FX3 source code on github. Need to figure out what compiler to us=
e to compile the FX2 code or upload the raw binary using the $180 programmi=
ng cable.



I also created an NI account and sent in a service request. They quoted $45=
0 to fix/replace the B205mini. Seems like a good deal. But since I have two=
 boards with the same issue thats $900.



Thanks,

Bill Weedon



On May 6, 2025, at 7:45=E2=80=AFPM, Marcus D. Leech <patchvonbraun@gmail.co=
m<mailto:patchvonbraun@gmail.com>> wrote:



=EF=BB=BFOn 06/05/2025 18:56, Bill weedon wrote:

> I suspect the device was wiped as you stated. Is there a remedy to bring =
it back to factory standards? There is a mictor connector with FX3 JTAG but=
 requires mating connector, programmer and binary image.

> Thanks,

> Bill Weedon

There is this:



https://urldefense.com/v3/__https://www.ettus.com/all-products/jtag-fx3-cab=
le-24/__;!!OkyjEqkqqe9UhNQ!wHMdCLrQxR5vHGjT5iYbeeS60_CDOq5dvzYi98JHJ2Q_3Nyg=
u4JnpjgP-bgPDAFG0CBBVQM0cMQyYT1l$<https://urldefense.com/v3/__https:/www.et=
tus.com/all-products/jtag-fx3-cable-24/__;!!OkyjEqkqqe9UhNQ!wHMdCLrQxR5vHGj=
T5iYbeeS60_CDOq5dvzYi98JHJ2Q_3Nygu4JnpjgP-bgPDAFG0CBBVQM0cMQyYT1l$>



There's a bootloader image here:



/usr/share/uhd/images/usrp_b200_bl.img



I don't know if that image can be programmed over JTAG, or some other image=
 is required.  There is a utility:



/usr/lib/uhd/utils/b2xx_fx3_utils



That is used *when the device actually appears on USB*.   In your case, "si=
de loading" through JTAG--->FX3 is not something I

  have a procedure for, but, like I said, I'm trying to find out.





>

> On May 6, 2025, at 5:43=E2=80=AFPM, Marcus D. Leech <patchvonbraun@gmail.=
com<mailto:patchvonbraun@gmail.com>> wrote:

>

> =EF=BB=BFOn 06/05/2025 16:55, whw@appliedradar.com<mailto:whw@appliedrada=
r.com> wrote:

>> We tried plugging the unit into several PC=E2=80=99s and laptops, and it=
 seems the device is not enumerating. I am starting to think the FX3 EEPROM=
 is corrupt. Is there a way for the user to reset the FX3 firmware to facto=
ry setting? Is a programming cable, FX3 image, and programmer available?

>>

>>

> I'm trying to find that out.  If it won't enumerate, there's no way to gi=
ve the FX3 a factory-fresh boot image over USB.

>

> This has happened so rarely in the 15  years I've supported USRP devices =
that I don't have a procedure committed to memory.

>

> Is it possible that this device was "wiped" according to military securit=
y standards for such devices?

>

>

> _______________________________________________

> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@l=
ists.ettus.com>

> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:u=
srp-users-leave@lists.ettus.com>

_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR10MB4095620E255CF2B6123511EBF588AMN2PR10MB4095namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:39214009;
	mso-list-type:hybrid;
	mso-list-template-ids:320481266 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Bill,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sorry to hear that =
you have trouble with your B205.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The B205mini is shi=
pping with a default FX3 bootloader, that is not modified/updated by NI/Ett=
us.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Q:<o:p></o:p></span=
></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1"><span style=3D"font-size:11.0pt">Which Linux Host OS are you using?<o=
:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0i=
n;mso-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">Are you using a=
n NI/Ettus supplied USB cable, or a 3<sup>rd</sup> party one?<o:p></o:p></s=
pan></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l=
0 level1 lfo1"><span style=3D"font-size:11.0pt">Does the plugged-in device =
powers up (onboard LED is lid when device is plugged in)?<o:p></o:p></span>=
</li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 le=
vel1 lfo1"><span style=3D"font-size:11.0pt">Did you try USB 3.2 Gen1 ports =
(ports rated only for 5Gbps) instead of USB 3.2 Gen 2 ports (ports rated at=
 10Gbps)?<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"mar=
gin-left:0in;mso-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">Is t=
he behavior identical on USB2 and USB3 host ports (to simply check if the d=
evice gets detected on USB2, no USB =E2=80=9CY=E2=80=9D cable should be nee=
ded)?<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regarding sideloadi=
ng the firmware (and bootloader).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I recently was succ=
essful sideloading the standard B200 firmware (usrp_b200_fw.hex) via JTAG u=
sing an Olimex ARM-USB-TINY and OpenOCD.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marian Koop<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Bill weedon &lt;whw@appliedrad=
ar.com&gt;
<br>
<b>Sent:</b> Wednesday, May 7, 2025 4:35<br>
<b>To:</b> Leech Marcus D. &lt;patchvonbraun@gmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: B205mini Discovery Issue<o:p></=
o:p></span></p>
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
<pre style=3D"white-space:pre-wrap"><span style=3D"font-size:12.0pt;font-fa=
mily:&quot;Arial&quot;,sans-serif">Seems we=E2=80=99re on the right track h=
ere. $180 programming cable and I also found FX3 source code on github. Nee=
d to figure out what compiler to use to compile the FX2 code or upload the =
raw binary using the $180 programming cable. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">I also created an NI account and sent in a service request. They quoted=
 $450 to fix/replace the B205mini. Seems like a good deal. But since I have=
 two boards with the same issue thats $900. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">Thanks,<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">Bill Weedon<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">On May 6, 2025, at 7:45=E2=80=AFPM, Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<o:p></o:=
p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-se=
rif">=EF=BB=BF</span><span style=3D"font-size:12.0pt;font-family:&quot;Aria=
l&quot;,sans-serif">On 06/05/2025 18:56, Bill weedon wrote:<o:p></o:p></spa=
n></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; I suspect the device was wiped as you stated. Is there a remedy to=
 bring it back to factory standards? There is a mictor connector with FX3 J=
TAG but requires mating connector, programmer and binary image.<o:p></o:p><=
/span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; Thanks,<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; Bill Weedon<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">There is this:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><a href=3D"https://urldefense.com/v3/__https:/www.ettus.com/all-product=
s/jtag-fx3-cable-24/__;!!OkyjEqkqqe9UhNQ!wHMdCLrQxR5vHGjT5iYbeeS60_CDOq5dvz=
Yi98JHJ2Q_3Nygu4JnpjgP-bgPDAFG0CBBVQM0cMQyYT1l$">https://urldefense.com/v3/=
__https://www.ettus.com/all-products/jtag-fx3-cable-24/__;!!OkyjEqkqqe9UhNQ=
!wHMdCLrQxR5vHGjT5iYbeeS60_CDOq5dvzYi98JHJ2Q_3Nygu4JnpjgP-bgPDAFG0CBBVQM0cM=
QyYT1l$</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">There's a bootloader image here:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">/usr/share/uhd/images/usrp_b200_bl.img<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">I don't know if that image can be programmed over JTAG, or some other i=
mage is required.&nbsp; There is a utility:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">/usr/lib/uhd/utils/b2xx_fx3_utils<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">That is used *when the device actually appears on USB*.&nbsp;&nbsp; In =
your case, &quot;side loading&quot; through JTAG---&gt;FX3 is not something=
 I<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&nbsp; have a procedure for, but, like I said, I'm trying to find out.<=
o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; On May 6, 2025, at 5:43=E2=80=AFPM, Marcus D. Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<o:p=
></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; </span><span style=3D"font-size:12.0pt;font-family:&quot;Tahoma&qu=
ot;,sans-serif">=EF=BB=BF</span><span style=3D"font-size:12.0pt;font-family=
:&quot;Arial&quot;,sans-serif">On 06/05/2025 16:55, <a href=3D"mailto:whw@a=
ppliedradar.com">whw@appliedradar.com</a> wrote:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt;&gt; We tried plugging the unit into several PC=E2=80=99s and lapto=
ps, and it seems the device is not enumerating. I am starting to think the =
FX3 EEPROM is corrupt. Is there a way for the user to reset the FX3 firmwar=
e to factory setting? Is a programming cable, FX3 image, and programmer ava=
ilable?<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt;&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; I'm trying to find that out.&nbsp; If it won't enumerate, there's =
no way to give the FX3 a factory-fresh boot image over USB.<o:p></o:p></spa=
n></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; This has happened so rarely in the 15&nbsp; years I've supported U=
SRP devices that I don't have a procedure committed to memory.<o:p></o:p></=
span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; Is it possible that this device was &quot;wiped&quot; according to=
 military security standards for such devices?<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; _______________________________________________<o:p></o:p></span><=
/pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></p=
re>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">_______________________________________________<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">_______________________________________________<o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><o:p></o:p></span></pre>
<pre><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-ser=
if">To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></pre>
</div>
</body>
</html>

--_000_MN2PR10MB4095620E255CF2B6123511EBF588AMN2PR10MB4095namp_--

--===============8100136725213926860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8100136725213926860==--
