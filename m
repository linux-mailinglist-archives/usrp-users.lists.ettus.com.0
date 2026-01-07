Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63672CFDF59
	for <lists+usrp-users@lfdr.de>; Wed, 07 Jan 2026 14:33:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5691438643B
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jan 2026 08:33:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767792830; bh=LTKet4D1/JQc6uBFetLrYbZqqlsRNVKTAW27cVdq9bE=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Eb4i7r8jXUfcQPeEYW4LgE1Tu5HzdFq2RpKoA8KxRRTLVqeZnOG5yQvntLXe86vRl
	 jjlC0m4qW5gxG7qaAaj0lF12BrHhIdCxIZnEVEFUGMnnLBEZpd2EJxPHfMkTJz7JM6
	 ejJwr9Z9utxUNZAh78vjigYmgfvuBNiJ+uv3QpuSUCmS2GtOJUoIerEIIutandxpO9
	 743ScMj0AirGjw2sUVfMJuUE3vuojVL2dzk+0nJIXaTezI2hl/3PzFFpKoIIL4TaR8
	 syHtCieBYQv43mKsdLcqmIw7b48ijaGMSmESHGp9IN4lhn1XIgeqdHMEQzi9FmuBF3
	 ExfBlh2y9EfIg==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 8079F386433
	for <usrp-users@lists.ettus.com>; Wed,  7 Jan 2026 08:32:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="G7n3urCQ";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="XqXo6d82";
	dkim-atps=neutral
Received: from pps.filterd (m0484890.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 607BK6E9015434
	for <usrp-users@lists.ettus.com>; Wed, 7 Jan 2026 13:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=bLyNEMUIUlt46SAa0gt0EFOHScAS
	IXKTk24XoPPx+HM=; b=G7n3urCQp4Y+7vA18rDFOMqlfuCMMxcOthetC4pRFXuh
	iXPC8mULP/3MWS4cKygu88xcfMY8LCVKffT2ZkpouGAdEXlSmcSOdHAzFCMXAqkB
	osJIVM7zCNtE+VIAovmVsU548TcITk5SRPsUOkLLe+MJrpvSxxNCtBpnve9aLWgC
	ya5/j1uHvVl8sPDYelwmvjOQlOKamkbcXbOszEtrbfP0k5YK8KLbtOXyD0xP4MM7
	p7XzRa3c//WLxDas04R2lR7F+ZOYIxDB2FIhKXvfPMs42YXdHrHyAbTYNxSjG0ZD
	oVADSEYBK6NmtcWE+BHfg/pPZuB4jZePcx/fMDfLnA==
Received: from ch1pr05cu001.outbound.protection.outlook.com (mail-northcentralusazon11010060.outbound.protection.outlook.com [52.101.193.60])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4bgc3sh80c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 07 Jan 2026 13:32:34 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LXfzw4AmNZV6dmaK/ZkX1YyFC0LGQRHEvFJhsbIvxiGSkaYcLcGI3fdGKGPjqaZaI/ZSqLNzX0cRBIWImSu+NaYco7UvGGENkOu3PZaNCEV+tDbbmXa3URqwnn9DucmZklXWxjvyeJCH66p9HcF5mBWfP+qy79Xktmtwek85oT6Wmq1dVE4fkPBXi1FRBPreeoqMZ1aTYbTO/MMHjRsNhB7RM49whm5bQlLV/6ETVE8dtcLXrPsJZHqfDLUmPKWHk/SxawZjXbLo5tv/vUxjuOhcOr0q8aAQ6EByy034bp/TidVgUmc4Ck9Qju1O3ZE8qZEVpMNgH2SqrCXyJKPzyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCrY/ZtuadAEDa7SJhLeQ3KCfxdlKApriNWNApn1INU=;
 b=AlRDuCZTGjn54c4XQ6cQ3PNO0+drGExkEf72MZbkWCHQhwjstUZucKCzxe4vLSkFzWKzxQG/EjJv8UMc7tVqE3tlwnt/ODN8BU4upW1ULeBvCjIrQZ1UGT1pAnePSIrtnAWY/kuL18Pc79IOkgqdlYcjROefxQhN9w8P5GzqRzu9/t0ZeCC/RGn7+EKntWOxLUiz73hc0PNfPzwTkIH4tbMRkut7vbRqex5ptPKaeiMf7Xyh1v1+tbezrWN8SfYogZ/nJVl9yzzL5QkWvVwpvLx7GWt7gHQfBIKmBAhBGUVus3i6+UiKrrrm431xfL36VQpiUm5FC0W0W731PVQblQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCrY/ZtuadAEDa7SJhLeQ3KCfxdlKApriNWNApn1INU=;
 b=XqXo6d82pgsPlEXQ2GAgUaK1VxQuWapH1S7ZC3jIyz8AOBKTYXuq460uB6WlD1gp0IQiTgIQzayiLHJR7w/EyKHmxuTL7aPR3Ry4we7PlcbEsQvld/Qz17EZQKWIsfPPP/sSVUH/rwqdGuoAs7+wRTwJA+yaCkxrFL3fPw6Cm1hjJVcKLQFAiXc3DxzmQJ1eoZAXTEnC+MGMP7HdGnbY6kK2Ao/gAF0IaVaxvl9ERWkZjdCig36EoLyUhKIlKHe2MoU6NVmWHiC8pe7GRSKrhn1d5fan0zSqK+IgzmIbdw528KA7/BqHIldFRUhgVXnbtUlcAp3YTbxQjID/Ap17Eg==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by CO1PR10MB4499.namprd10.prod.outlook.com (2603:10b6:303:6d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 13:32:32 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%6]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 13:32:31 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Using extension interface with RFNoC API
Thread-Index: AQHcf9oTCeaK3PRKXEeilHJp9+z51g==
Date: Wed, 7 Jan 2026 13:32:31 +0000
Message-ID: 
 <CH0PR10MB51792B88EDD077E81262770E9984A@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <CAB__hTR6tpMLh6P+zb0nog2hOL8_ksJDUb0vPJOGr0SgLOcG=w@mail.gmail.com>
 <CAB__hTSE_GpkrXsh0KvGw7BjmcduM=gNJmxBD3FivxUhLMyeHA@mail.gmail.com>
In-Reply-To: 
 <CAB__hTSE_GpkrXsh0KvGw7BjmcduM=gNJmxBD3FivxUhLMyeHA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=5ceb7cb1-ca0d-4d96-bf22-8b82116f9746;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-01-07T13:05:32Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|CO1PR10MB4499:EE_
x-ms-office365-filtering-correlation-id: f768f4b8-799e-47fa-9e17-08de4df135c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700021|8096899003|13003099007|7053199007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?d3JRWHhORUpQNmlxNzlodHNGcVZCZCtwMnFKMzJkejJsRUlQYkt3WEdLbnRp?=
 =?utf-8?B?T2d3OExJSmIvOTJxVUxISkpPK29uLzFYQnZBMnc2bTZWMkQ3S1AxRnVnbUYw?=
 =?utf-8?B?bm9BdkgwUDhVaDMxSXdGcWhneFc5enJJMmNrMU5ydlJYYTN4NUtJQ2t6NjlK?=
 =?utf-8?B?ZGErZDhqUnNsbmlGL2JWWExVUXFqc2ZDV2k5RVZUT1BrSnRPejZUWjM3R29H?=
 =?utf-8?B?ZFlyK3pVcmNkdGo2VnNYeWpHVTd3NUU1RmlNazdUZzRZaEl5blVUMFRQdkN1?=
 =?utf-8?B?eDdHaGc2aGNFcVlRYUFiUXFObGNiVHBVZ2NCNDdiSWYyUTFZUjcvWjRLMlJ2?=
 =?utf-8?B?L1JpMzJNVk1QQ2I5ck5sN2lIdTlkdUlNL0VpTEowd2FwWHB6andYTWE1MEkx?=
 =?utf-8?B?alFmM1NCVHFnRHA0cE1iTU14bnRjMFlQbUNxVVI2OGtzUC9tbXduT3YxRjZR?=
 =?utf-8?B?YmUxUTNXV3ZiK2E0MGJ1cmdiN0VuT3BrV004RkxUVUtUTk5hMSs1ZVhJN0hS?=
 =?utf-8?B?RnN6S3JENWlCenh5SDVOdVBRN2R0WitEZHJRWStYRWE2bUQvQ3ZpZjV1d05U?=
 =?utf-8?B?eTVpVzZvN2szd0dyeFBPSjJIWjdHVEdBdWMzU3NPdytsbGxlblhJRXVscVhU?=
 =?utf-8?B?YlhZSmpPdmljNktNSklBUmtDRngyVlpjVXNFNFhnc2FGUGxPMGFaR21zTmdT?=
 =?utf-8?B?dVlaaFIzTGpoUFU5L3ZoWlkwWXlSWWVVeS9qdlZibjNWSW1qaWVma1ZsMFMy?=
 =?utf-8?B?NGxwTUpFQk56YngrbGNsNXVMd2E2VFh6UXF4Z3lvek1GdmdZSktHMUhUMXZl?=
 =?utf-8?B?K3h6ZUI5YVNXb0kyeDRua1dqWFdhMHdENnBXS3JlcHNLaFNZWmtSN3dOSGVP?=
 =?utf-8?B?ZEQvaElTOU9KZnpVaThHY2N4NlBPOFBIRzFaeXBHbHFFRllhdlNMK1RhZEVK?=
 =?utf-8?B?Y0g0cElwSjE5QXFwSXBsY0liZkQrMnkwbmFEenRubHN3dUpkSm5BS2w0OG5C?=
 =?utf-8?B?WVhTWCtsaUg2TkhBK1JZZFE1bTVpa0pqMko5UTdlTFZUTVlXVFI2SFBPN1FH?=
 =?utf-8?B?dU96TnpqNEtRd2xnWmpFTHZ4bG01ZmdFZDlYR0x6MTRUMTlpYWVaTGRERDBk?=
 =?utf-8?B?S1VuR1Exc2ZISEV0cmQ0YTlyOWxIVlF0cjhOcS8yVGZlRU9rK0pTQjBQSGk3?=
 =?utf-8?B?YkRMcGI2a2NBVUs1Z1VVOG1wdU41cTB2ZklpR0Z3SXhIdFdpcXR0cWdGRlFH?=
 =?utf-8?B?VUdUUXZqMUV6Q1MremdiNVBnTVh2MC9JSjNKQjlpdXc4SDh1c2hmVmpXYUpz?=
 =?utf-8?B?dXdvS0dtQzhaRUtha0dXclYybSs2Tmt3V0JtQThlQWVubmpaOXh2TFNCaGJZ?=
 =?utf-8?B?QW5sSkw4MDhWMnM1VytiYmcrU2YzZnZKeisvQUdNZjVLeS9PUG11OHA1dFo3?=
 =?utf-8?B?Sno2NWxGY2xDdDdRd25sUGtXSXBtbllwUmZFR0R1cWxNSXFuUEIweDRxMG1R?=
 =?utf-8?B?cUtFdGRydG5qVzZwV2JHR2ZtLzVHSGNLc011a2J4UFFkY09aZjA3NC9PYUpR?=
 =?utf-8?B?ekF3dHV2TnhtZ1cvN3VmcXJ5YWxob2tUNDdXeEpQNHJnT0lBK1lrUGZKZm9D?=
 =?utf-8?B?bEpJcWRUZ2xMSis1cVVjVDFRVE1NOHIyOU9VeVBPRFJ4Y3E3WEJvKzQveW5Z?=
 =?utf-8?B?TkRrMlJNc1J1Wm90ZDQwQ1MzK1E3Y2ZRRi8zY2lxdld5SXpsd3JVL3hIQ0Vs?=
 =?utf-8?B?aGZqMEJpV3VkdEJDZHVyS0ZLV1VzejJkMC91SDZXa2hTdFFZdXlabzNmTXJ6?=
 =?utf-8?B?Q0pQWDZxT0RGTGJsOHJPOG9pdFAwajBkZDFaTk1nekNucE9kVGhYeWg3OGw4?=
 =?utf-8?B?MWRsRGcyUDRESHZnalpUeGdnMnhneWVzNitTSEc4M25IV2hTaE1nNWFYNWRD?=
 =?utf-8?B?OGZsZng5bExFY1Y1dVhYRDRxVUlXRXJTWlZUcHBicmZnU2tyN25TQ0lqOEth?=
 =?utf-8?B?WDEvTUx3NlZFK3NHY2V1N2hucSt5Q2UrcncvMk12L3NNYlZza2pTNXpEN0tH?=
 =?utf-8?B?VXVCV01Cdis4NEQxdnZSTE9zVjBORTdWQ3lhUT09?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(8096899003)(13003099007)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dnR5bmVtWm14SCs0ekpSTkkwRkpueG5NUWhhY0FqZTRVRVVKZWxaTzVGbHJP?=
 =?utf-8?B?SnFZVDlVSGxhKzNLQ2NFVHM2bng3d1lUb0QwU3l2THhLclhJNUJkV0FNQmpn?=
 =?utf-8?B?RGlOVi9BQ2JsMk1hUXN5VyszNU5Md1hTYjdvb1dLSnl2RW5vWldVaUMzMWJB?=
 =?utf-8?B?RzFYS2lrQnlXZ3BYSE1LRWhFb3hwNkxiT3pzdTZPY2c3UE1TaVhqYmhPWGxx?=
 =?utf-8?B?Zk1vS0hPdUxQQXJWVy84M2N4SHp1K2xjUWZPSUZGYnY3dnZrYTlFSVN0dTU5?=
 =?utf-8?B?bzBiNTRmcTdDTDlHNTA4ZFNQWlFDZmdUcG1EdU1uWkVtcVZSUTA4Z1NBU3V3?=
 =?utf-8?B?blFtQlhGTTJ6SklYWHExWUI0ajNZK0ZmejJCbGZCbkdyWXlzZVo1WklYRUxU?=
 =?utf-8?B?Sm9LT0I5VVB2OVhlbFBtSk1MYXFNS2ZrM280Nmc1aUJSRkE4a0NKZ00yVUtk?=
 =?utf-8?B?eVVJTlVzZVl6UU5OakkzY1FKZVhCMnpmVU44clVLekQvMTZHVmk4aFdRcVNq?=
 =?utf-8?B?TEJTSjlPY29HcmxUZjFEd0NQQlFBaFJscGlnOEZ0SkptMFArK0NOY1VWaUd3?=
 =?utf-8?B?dE0vSXpZTUFxaUVDMm8rb0ZCOGwrb1huTndDc0UzaUVrZ29FNitnRVhmWC9V?=
 =?utf-8?B?UFI2ZFNqYW1DeHNkVEU2UU5KNWFaQlYyamo5VjB2N3psalZOR2ppc2FqZExh?=
 =?utf-8?B?d3NPYkprYmMyZU5IcTdwZWxlTFl5cWZ1VkNMZjNVajc4M0cycXJUZHo0WTRS?=
 =?utf-8?B?YkQzdUlDY21XZzRHQ0VWa2hHbnAzSU41cjFzWkZvanVsaUU5UW5uSTBjWE9k?=
 =?utf-8?B?TkR3U1dGRzFBK2RlajVzcGtsSHI3WVdEVWJndXVMM1ZqT0Z0d1RZaHh3a0hW?=
 =?utf-8?B?THVEeDRzcVBCS1NyVVRXNFNQUDhYNXQ2QTRyZVJuMnh3VEdjZVBMSXlpMC92?=
 =?utf-8?B?UkhDaU9JV3VsaklWTGs0eWsyTW9rZHY5MHpkTllpTDlCaTVEcXJCVytJV1lF?=
 =?utf-8?B?TDhnZVFzc1BwVkpTeWdCQWJ1Sis3alFVdWhoUnBLZTluOTBjVjFOUXBDeEc2?=
 =?utf-8?B?UmNhR2ZrSHRqaEdLckp5eGxpTDNmQXhuRVBJRnF6a3hpdDBiQXM1VkIzMWFk?=
 =?utf-8?B?RGJUZUVVU0EwU0h1WTcrZHl5bERwUzNxTUxOck9YTzIxTUFGQU85Y3FPL0I0?=
 =?utf-8?B?bnd1YTdUbmdKa0lsYkUwaFVoL0xpcitPVyszc001Mi9HTEkrZ2c4b0t0LzRQ?=
 =?utf-8?B?UWJwNC90NkhYRk1HcEYxOE4yWmZ3NXQyOU1WQW5FR2tPeVk5d1N2Rk8xYUps?=
 =?utf-8?B?eU9INlJCVXNySUtkTDVIU09PMFBRNlBTUXNsV294M0Y3enhqajNOYVduSmoy?=
 =?utf-8?B?dTFlZnJhVFFCMXFXR2dwb1lObzl2WVNnMllHRzhkNU1oYlB5dEEzeU1XQnJO?=
 =?utf-8?B?eEsyV3NoazdlS2YrOTdLVmJBODlEZExwL1c2SVNPamhGZzV1cXJacUxOaktp?=
 =?utf-8?B?SmtweTlZSkxMWENnOWVpdzBwVGw0MEJNdGNiRSt0TEpONGdtemQrRG9ycC94?=
 =?utf-8?B?enFkNzMveVpLQXpNcHAzSlZnSDlEZjUrMXhzUEdGRFBFbmtBTFB5MGo1QS80?=
 =?utf-8?B?TmloR1lpT0ljbDNvb2FUV09UWXp0ZURyT3VrY2RsN1k0YlpwWmtOdmIzUXFk?=
 =?utf-8?B?cGV5RUgzQXJCeFZNdC9LMzRUdTdQNTRWK1VOL3NxK29mLzQyWHd6V3pHS0Iy?=
 =?utf-8?B?UHZyQ0lUQm1HV013YW1IcmNHU01GbHQ1eHd4ci9LcE9DWk1lR3dWZ1c3TUgx?=
 =?utf-8?B?eUE0T3I5dEttWHNZOXJGOFRxZ2FlVFFvenZxSnBtbk9JZ003OE9KWGVJODFt?=
 =?utf-8?B?Y2ZvSjNFeUloaTgxRHU1NlVhMTNsbkRzMWJKcm5UZGc4VS8wSlJabVY2eStj?=
 =?utf-8?B?enQ4UlZsU1loZmkxbTV4TFNiaHNKaW12RE5TM2RKM3RGdTlNZmMyWnpkazF1?=
 =?utf-8?B?S3JTUC9DUnA0SmE2cjdvQ1RERVA1UkJ2cHZqdTlXeXR3VVVKQ1NwSW9Tc1Jm?=
 =?utf-8?B?cHB1NXVqYXkzYTczNk80V0h4N3RSSDRHTGhmZW1RakhncmRQK0FVb2V0TERQ?=
 =?utf-8?B?V2JTZW5SZDdiWnpOMlVOK1plZXJNRUdlVUxjWlRiUGJFazArYmRET3BNQk9H?=
 =?utf-8?B?eXJXVWc0WWZ2bGh6c241RURPRXBSOFVTek5YQm8rRWRNMTIveUJqaGhtUi9w?=
 =?utf-8?B?b0xtU041Ui9aVjZydmtjWUtYOTFHNVlPeFAxY1pLb1ZuMExxTTFpWUJlbHBZ?=
 =?utf-8?B?Z1lkUjZIVXdYc2djUjE3cStWa2VmTVluK2tydHljWmtlUStqbnVJUT09?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f768f4b8-799e-47fa-9e17-08de4df135c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 13:32:31.7797
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 65XgIdsnryOiH1iZhF2/hE7Fw+nwP7Fd9ijaR9cdFBbuw77vbzIQI9hOp9SHDLRo1RbIErPgkIk9iJB3e9Au2FirSFh6GA6NASjw25O1678=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4499
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwNCBTYWx0ZWRfX72PYXfZypuyH kFoy8KNduGQYxrdtnk9OGZBjdJHcjaG+nI7eRFxuf1bgpDGr38UK0F16LNEc/pKQ7rAvNlBFLne 4lXfEyRS7iVeURIUhj3ZRceRipofn/FrgyLQ3PQRc2ATKiyx2Ym3XGRzcLDtWBrd3IprYcl10U4
 hh0tOQwFVoi0wrH1wZvCCOWlAVuHQ7hHIn8YyNc3FcP99h4FZYGjmztSA+kNgKsvVqoER8IzM44 mLcxazWV85cR0ik0lH6vurGzeBhB/wixubBKwXgTGEM4NqhFI1H3cxgMn/qsEslPb3DNDLTdiOq rztp5zwEibhLqUJ3LYqDeLIv6iPPmUccYyLhj6oNCbPL7Fz1BNxw2ma/IpIsmqSvk+j2A8ACUDN
 LP/6w1gKTA75RDepVj7j7LPwVPL+rd9cKaxGVLogII8G2bH5fToLdZOmPTN+jeqxsmyCS+qnIsG tJW4iqhR9ccbIGeXf4A==
X-Proofpoint-GUID: ziPgxREZHAup0ak-UnYluM1ZwGT-GGuR
X-Authority-Analysis: v=2.4 cv=Cruys34D c=1 sm=1 tr=0 ts=695e6072 cx=c_pps a=8uZh/oWqEamKeU/uFK3X6A==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=RWB5Ze0znOYKidDyNK4A:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=dsVcJr_LqJE5oTcyaAoA:9 a=l834jLIjbq2dVoxW:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-ORIG-GUID: ziPgxREZHAup0ak-UnYluM1ZwGT-GGuR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2512120000
 definitions=main-2601070104
Message-ID-Hash: 5DNAZ7J53TPIPJM5HU3XQLPMWPYEEQIA
X-Message-ID-Hash: 5DNAZ7J53TPIPJM5HU3XQLPMWPYEEQIA
X-MailFrom: prvs=24673f583c=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using extension interface with RFNoC API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P7PMCXDRIR7FBXTEPIGQ5WGXESMD6EIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============0414533328761004662=="

--===============0414533328761004662==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB51792B88EDD077E81262770E9984ACH0PR10MB5179namp_"

--_000_CH0PR10MB51792B88EDD077E81262770E9984ACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

We only have the extension API available for MultiUSRP because that is the =
API that is meant to wrap away the complexity of RFNoC for typical use case=
s. If you start with RFNoC you know that you=E2=80=99ll have to work on a m=
uch lower level. I currently cannot tell if making `get_extension_factor()`=
 could potentially have any bad impact.
Can you please put this and the antenna mixin issue into our issue tracker?=
 https://github.com/EttusResearch/uhd/issues
I can=E2=80=99t promise a quick resolution, unfortunately, but at least we =
will be aware when planning our tasks.

Thanks,
Martin

From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, January 6, 2026 7:22 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Using extension interface with RFNoC API



Hi,
When using the multi_usrp API, it is relatively clear how to use the extens=
ions interface. However, for an arbitrary RFNoC graph using the RFNoC API, =
it does not seem possible (without some cheating).  Specifically, the funct=
ion "get_extension_factory", which is needed to get an extension is not a p=
ublic function.  This function is called internally from multi_usrp_rfnoc, =
which is possible because this class uses include files from <uhdlib/...>. =
 Is there a reason that extensions shouldn't be used without the multi_usrp=
 API?  Or, perhaps I am doing something wrong?
Rob


--_000_CH0PR10MB51792B88EDD077E81262770E9984ACH0PR10MB5179namp_
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
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Hi Rob,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">We only have the extension API available for MultiUSRP because that i=
s the API that is meant to wrap away the complexity of RFNoC for typical us=
e cases. If you start with RFNoC you know
 that you=E2=80=99ll have to work on a much lower level. I currently cannot=
 tell if making `get_extension_factor()` could potentially have any bad imp=
act.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Can you please put this and the antenna mixin issue into our issue tr=
acker?
<a href=3D"https://github.com/EttusResearch/uhd/issues">https://github.com/=
EttusResearch/uhd/issues</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">I can=E2=80=99t promise a quick resolution, unfortunately, but at lea=
st we will be aware when planning our tasks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Rob Kossler via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br>
<b>Sent:</b> Tuesday, January 6, 2026 7:22 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Using extension interface with RFNo=
C API<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"EN=
-US" style=3D"font-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:white"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When using the multi_usrp API, =
it is relatively clear how to use the extensions interface. However, for an=
 arbitrary RFNoC graph using the RFNoC API, it does not seem possible (with=
out some cheating).&nbsp; Specifically, the
 function &quot;get_extension_factory&quot;, which is needed to get an exte=
nsion is not a public function.&nbsp; This function is called internally fr=
om multi_usrp_rfnoc, which is possible because this class uses include file=
s from &lt;uhdlib/...&gt;.&nbsp; Is there a reason that extensions
 shouldn't be used without the multi_usrp API?&nbsp; </span>Or, perhaps I a=
m doing something wrong?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB51792B88EDD077E81262770E9984ACH0PR10MB5179namp_--

--===============0414533328761004662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0414533328761004662==--
