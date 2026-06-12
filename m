Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QKufIrrGK2pIEwQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:43:38 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0946F677E53
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:43:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=ySkmZJ0K;
	dkim=fail ("body hash did not verify") header.d=fugro.com header.s=ppselector1 header.b=eiJ2FNZ2;
	dkim=fail ("body hash did not verify") header.d=fugro.com header.s=selector1 header.b=r43YkViN;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FC8E3867AC
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 04:43:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781253817; bh=ntjeL62/83W+obyci0Grtxm1utEAjrezV7hfBnYvaxA=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ySkmZJ0K7GpivNaBEw1fqnErYqimhmITJygS9+13qlceUOvZRottngpVQrYQ/Eqj9
	 Diq3zQSjcZQCtsqaXmteQJu1sVRqbhl9/Y4KIhaCyFoKUTAtGqiOEWWDFRsHoBrPQ0
	 Xiy0wNVhgVdouGWjXK5CLY9lrSex2Hltdv+uOQOZQw/w2M9FLTjdmI9ynjUF/QYUxD
	 Dec6xUuhZ+3T4UYAzo85ADLEFqKGzWYVTNcpTzXgkUFIubps2s4AeYIXFc4jy/yIYg
	 vL1ArOnWpfUmECCm062cODy8X/ZZJiWmAAB7MtQXK7K3CEQsi+vaQz1799lTSc3yOH
	 yC9RQXWwEqX8Q==
Received: from mx08-0002cd01.pphosted.com (mx08-0002cd01.pphosted.com [66.159.246.70])
	by mm2.emwd.com (Postfix) with ESMTPS id E79823866E8
	for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 04:43:01 -0400 (EDT)
Received: from pps.filterd (m0483092.ppops.net [127.0.0.1])
	by mx08-0002cd01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C8h0TC3843524;
	Fri, 12 Jun 2026 08:43:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fugro.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=ppselector1;
	 bh=U1p7FUuQMftnIsfFSRX5atnZjLfuoreo7RVwNsxwQ3c=; b=eiJ2FNZ2bq+k
	qznm0ZxD90HNN3WqcjvVvjoUQqrnPuWBlPUKXOBLx4R2k7lTHOmp5qcNqV2RwPRl
	C6SO0WtNWOsGjO8t/o/lIJsOLPaspXkz/hJYxnDkfQvM3WTIfoIpylngbaYa8L9z
	M6PuzgSB8o+ktKRtRTdHGCYDcqcj56+ffVOiAqMAFtoiqKAH30bd9p3VAQ0Eipmo
	A9Qcd6YdeEMm3FOM3QU5Y4msvafKTuo1Ru4idTPvEaAYivwm6rHywvL/b6I+efhh
	6as1u5O2FoNV4iFXVB0jVlWm3JIToEYu5b4KgovPqAdS1xVwHlmI/rxs7aGQtRmX
	cXdBltBGPA==
Received: from cy7pr03cu001.outbound.protection.outlook.com (mail-westcentralusazon11020109.outbound.protection.outlook.com [40.93.198.109])
	by mx08-0002cd01.pphosted.com (PPS) with ESMTPS id 4eqe64us2j-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Fri, 12 Jun 2026 08:43:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xxLFYHN2bwo0E7n5MH0MCLdQhlkHtwLC+2ViyzAQebnB0BL30aDlt3fh890Gl/tX+oW4k0AUhOf1JQ7U50rktCeU1r31wrOJ0oJ/KcqFgvnMF7UDui9vxXLHYG9lbkSGH5kJkfJw2YNJ25wd13Gpa0TtqVuRgVQzkCYoSjQ01/8zFCVVMDzR90r+93fpUWs7jEHYzYhFKSTIw50wsrk2JB2feGuSjW2YXZ25N4VMyuCztqgjsjeV3y/sZlfY3zUbXeprtgoeaf8er7JCNqeUI8DclUarZ6zKNrGcoq/vnp6dOApY8GOIMNM8Vg4ac9IaI1fQgtE/48Ad1CnrIB7JQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U1p7FUuQMftnIsfFSRX5atnZjLfuoreo7RVwNsxwQ3c=;
 b=K8GrfuhRuU6IPMgwWHQtesj6AkXTryis1sF0ln+lQBAiRC9+82HnekCD2e8SXKxRFmdPP105U3cH67KLlsihUI1DPIMecLK87pKOGKCRVTS36lcDCqljMWv84/iIuWBWuZPg43CyvBHKQ49E8jg0PWRTq16Nm2ZMGuxZfZBopxBDGMGInCmbxy1mPBaseaXkasffffr+CeooGbk/gjk2/zTjrb+BU8JpLud15aAtyT/yU7EyWD4w5Zey+uhPGFtz0pp4I5mzrvWLxYrp86uOjAlHAdGDFt0lOYjBmnoH+rw/tpzTIOf0q/bGTzn6fd+MI12cDo+Dlct1kb2CAKfoHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fugro.com; dmarc=pass action=none header.from=fugro.com;
 dkim=pass header.d=fugro.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fugro.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U1p7FUuQMftnIsfFSRX5atnZjLfuoreo7RVwNsxwQ3c=;
 b=r43YkViN9LOKx2/wxQVYwzE4iYEvadu8RtffzBLMt+vQG0L/ecxk72K9a2GotdtXDEsCLsbH0dx2brr7x2yt+Ybk6LHL7z8pOmu1FRPciMCzYoY5oWBB7LDoq58aT95ZmGbORXQs6zeGTcb0Khes1mPvcKYQVTtmKRuti730Ds34SgYGtoMEm6CLe8/88Mb2vimtpKuXxf+9D2ItfmLz10t83ij3mx3c2+NEIos77bjGlal3JA5kE5+GsYSK61rF11GLfdkyC8h5X0O8zLLvh6s9B8YpUoLQs5e4r8XssfruzPWQycIKrR2K9PnOw+ZAZcIK+/wxXtS9iAtfn6wCnQ==
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by CH0PR11MB5315.namprd11.prod.outlook.com (2603:10b6:610:be::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Fri, 12 Jun
 2026 08:42:56 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::770b:7229:68c0:5ded]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::770b:7229:68c0:5ded%3]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:42:56 +0000
To: =?utf-8?B?Q2hyaXN0aWFuIFrDpHNrZQ==?= <christian.zaeske@syss.de>,
        usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] B200 frequency shifted
Thread-Index: AQHc+kZ/96ZvLh2/80OCAgb4wHPkobY6mUFw
Date: Fri, 12 Jun 2026 08:42:55 +0000
Message-ID: 
 <PH0PR11MB5095564916CB9A0C3E0F11E69C182@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
In-Reply-To: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|CH0PR11MB5315:EE_
x-ms-office365-filtering-correlation-id: 406b2605-c533-465d-8033-08dec85e9970
x-proofpoint-id: 3519383A-0CA2-4417-AA76-B13B775710EE-Outbound
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|23010399003|1800799024|56012099006|3023799007|11063799006|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: 
 TTv9TEgpawyxh5mPHQsLOrhTXwnOIAODIJ8FQiCiLmvLq2HNXdwOZQGAHY6IurqOFR3IxnzJ3rQxECrw/I+RNJzcJCI+AryOEokvWqEth9g0IDi0Y80sPDaJ3yTlXg2thoog4t+TqK3OMkER5/oJB95KXzC+/CqnUJzKCF6cNLZ85XkKxjs5o29Bmz4S2rfC3Rfdxe09vQJARk3jEMECb3JXYN0scaruFV36f9ZjUs4xVRK6qdNhwfLX/rqvZFyEvQL6jwD1fEjPXWlmtoTSHRv9C9l7Upr6PmFjGbXgZQ701V9sQI/ghEbnKGi1s0LjyLYs+dOjwIepPd8hcw3y2SdKVW8Glq8xp3BfU3NkFq1dah3X61K5oAb7wd8JCjDaJFgw7qV/ffn/pUSE8DW4moQ6O3F3HvcXcv8NpBKhzzrv7tufnVKj/uTCTr05ay6f4zf5a0oKfag5QBMe1LoFAJx35IpGvHc+4KWCdrVZjoQiv6AyteO8CaXx9K13RtorxK0J/KvbFSzgaAh5poBhj9F6tWw53z8FOvIBQGy9+LapcjwkihPyhv/70G+719le4sSjbAwe7PS0ijCC6SKD3EmX7XZSya4WmxW1vd0hy58uEwHD+VpL7tkT8TDnpXTqMA3LiNOYoWa/wfkaALf4np1cEe6jnIh3xCO9xp8zwhgob0JVgzL1AVUufpXdm8562W2gnVXXr1QF/Y56kdmF/Wjr0tPcJ9hOgX484pPCHaJQoMrXX8fvvzBG4D8aP8fy
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5095.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(56012099006)(3023799007)(11063799006)(22082099003)(38070700021)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?YnhybDZTQmVwNCs5OW51L21ZSU5TbEdOenNjWitEekJEWTNsYStWaHhUNWN6?=
 =?utf-8?B?S1lIZ3E2QXE5UEtCK0RxbkFuc240dENTd0ovWlpOV0MyR0hEdVYxVStEaHRY?=
 =?utf-8?B?UUxKLy9ML2hXL1lGeFAwMC9ma013ZEZqV01DNFhiS2Y0K3F3cnNCMlVrb2Ru?=
 =?utf-8?B?eSswQmJhWU9xVm9ZVEY3ZmRWRitSc0NiV0E4QTk4S3hsUlRLc04vYm5TM0Nn?=
 =?utf-8?B?bzZVcVlmdFd4QWk1b0YzbEVSc2hMQmloRkd0ZjZTcVZXWEFITW5DZmdwWDF5?=
 =?utf-8?B?cncvUk05SEtobThIdzFKQjg1di9odzB4OG1oYXM0NEN4MVFEK2d4M3NWYUR0?=
 =?utf-8?B?MFlrYmc1YmFQSXZ1YlFNNzU0dlNpZkhVWVA2NzZ0R3pCTDByU0lic2g2aGhY?=
 =?utf-8?B?bWpNcnhBK1phRkZUWXA2MFIwS2dxdFZkVWorMGhxdWRSeXZ3V0pFRG43V1Nw?=
 =?utf-8?B?NHN3SVJtMWI0azNoN3laalpKZ08rb1hEdzRZNmxhUUt4K1czWFJwMGFTRVE3?=
 =?utf-8?B?OTFLUEVVemxOSm5MeVp0aG5MOTI1U3Q4WDBYa3JTQ001dG9XOUI4bnUwbURC?=
 =?utf-8?B?NnpEVkZkeGxYYktzZEd0YVkwV3lBWTc2N1Z4N0dpdEhiam9ORGJNM0dCYkI0?=
 =?utf-8?B?Q0trcmZjUDJvd0Z3ZHFUV1hFY3M3QVFtWFFBK01WUC9YN2hRejhYUktpMTlB?=
 =?utf-8?B?V3JPdE90UnRiYTdjNFBDeGMweW5sNWZqaGtDT2hDTXh3ZU9NY0VtWmpseURI?=
 =?utf-8?B?ODgzUlBFNDJCR2dQVVFTT2dVYWhrTThVSG5EN051VTZrUkhsb0t2cUhQR2Zu?=
 =?utf-8?B?SWs3azlqaFB0Q1E5SlZzZ21jRXBZRTVrWS9MR1IxS2VTbitFU0ErQVNNYmw0?=
 =?utf-8?B?RUhGRDB0TTVwc2toU1I0T0UwSU5DQjZ6eVBOSzBDTDY2b0VGWGg4UG85OVYw?=
 =?utf-8?B?dDRIRmF3ckFWZlR5Z3A3WDRYK3BSOGF3U1phVVA1Z1lmQitjT3YweUMydDN0?=
 =?utf-8?B?bWFMOURLTldpM2VFZWFYVURaanFEaVFwaTVCenczSkhvVEY5cUtqVWJ1a2Fh?=
 =?utf-8?B?cXE1WjI0TUw2QmJwT0lpOERtZUo4Y2djQUVEdEhaNUUzNG9vWHFWNVlETXlr?=
 =?utf-8?B?Wk9hSDk0NlZEeUZydy90cE1hQTNrYmpicXZveWdLa2ozNFJ0dDUvaG4yUDNC?=
 =?utf-8?B?eFlrNGQ2Vml4ZitsMXM3T0dIUUJpRGloY2VmR2RTaERkRXRIak9idkltSUM5?=
 =?utf-8?B?bzI5aXFTcUJUaEw0M1JXSU53WGg2Y3lxRDU4NWpob0JjTHBwVFFHYStWRkFy?=
 =?utf-8?B?NVNEL2M0SkppRmYwMER5MVVTdzl3WEtiS3A5UU9GaUZlMUlTaW9ycVV0TjNj?=
 =?utf-8?B?Z3NHNDd5aVRvWU5CVkdqaTFJR0IyUkF1RTdWY09UM25NWGp1YTBIZmJjNjFL?=
 =?utf-8?B?emErZERRRENVdUVLLytXWUwzZnJFeFpFRHJ2OWRISUVXT2s1SDFicFVWazl6?=
 =?utf-8?B?VmRBZ1U4NmJqNDFSVlV6Y0c4eGx3ZlZwZ2d5RUlRR3ZqanVlQlZCSUs4aHMw?=
 =?utf-8?B?SE93d09NNmFmc1NsU0VRV1NiZitrUWNKa3hEZUR4SmxwOUtUMEY5cStTdngw?=
 =?utf-8?B?MHQyQ1NKUW13Qm9nN3RWYVIyOCs3akljREtoNGIwc1NscG1aNy9uVFc2WTcv?=
 =?utf-8?B?Ym9kVXlFaU15em9PbURCcWRqK2hiOElzVU4wOXZFZHF1ZkprR0puc0VBenFk?=
 =?utf-8?B?eFFPaTZzT3RlaW1mS0hKYndraVY0ZjkzaGl3U3EvL0hlalhmSUVBWXhtYnVr?=
 =?utf-8?B?aDBIalU2UVVqL0EyMGw3Yi9WZ1A1Qk5sRjBTQ0ZIQzFTL2NwWXFmeVlrNFVD?=
 =?utf-8?B?SnZ3TUhPYWRQZmNyc2NVY2V4Z2JuNVVseG11eVFOcGRvVXFNS2ZHdXI3SnpL?=
 =?utf-8?B?eWltSmY2TzVRNmdkempqL0VFV2lOSzB2ditNcWw1cFNETnJ4SVdEOERVb09L?=
 =?utf-8?B?Y1VZOVcwaVM4N0oxWEp1T3c4Zm41dnFWQzc3Wm9nLzRVWTMrSHdYdXVPQVFB?=
 =?utf-8?B?azNGczlldHFkWkU0clIrQ2lBMFpJTkZDTkFWQ2RsbHAwaVNUNFN0WWNLOTVP?=
 =?utf-8?B?Tmx3TjVDa1N5aHZCZTVOZzdXd1lnZXg2QkdtWENuV0pPUFNVTjkxNzQ5Zk5r?=
 =?utf-8?B?VEpzUVNrSTRaRitObEtrQ1ZqOXN3czJHaE5YcFNlTmJrNThCcndmeUlvcGhO?=
 =?utf-8?B?VkhYTW9ZRXp6bWpGZHRjOGMwMWtIb0xzaDlNNEhaUGdTR0h5MWtYc21ycnVw?=
 =?utf-8?Q?NwL4NkJM4E9nVJdObx?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	ShpwXHmzH/b3JGsYRwEqz04llV6Mrl1shqpfh/grD+EufI78wTxaJR1eSgwHw2McUpOL42yjkgl9PVDW8AG76rl0FEgMBR4aYKL+4v+BJ5ahoPuajGjnKFuAW7QMMkRV7hVy2qvh/FWFBD9vlNbM9dnA8Ag9tfBKjSXV/tb0VP8/pfye/zCx9yGwbxtth3iOL+lyZ+9XKjwYoNDe2bnk9GK0vKAJehyTtNqfQsJrRf8reClB4FJyUPBODcIGBZRGt9lIS42eenKlsK15lCQLv5+QRAFAY/04GyYO95LBYJSIZ9AgU/wpt9uxIn7PEEaole9DsWnaWaApjvuRf8FVfQ==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Z7UFaACBG6aW3fYhtjkWdTZebDyX9CvqV6+77pW3/xQ34Te9RpcoXqsXvWVH51TnHidb4SPMa1UeSnKDkQ8++JGh0VNmXE7z1kXpqjZTVb9YPQFnt21Vp127obTseO6K6jwP7T04F7EEldLp8UjgqRHIKiKZBHwvhPOqOWHQMRlPs5jfRvwq5nBQB7voQi+Kzqj/oisaYyIwj0Kkl9tkarr6p8vn/foXi5feSvgL/QfKFSGPNNBF5uyc0tbRdeV7jDTifKUMImybLq9v/YaU/u7mX7ddXzo05flYoNxvPgFrM9v1oUoYxT7QXYr+73OF+4LSavlk/b4+ILq3ckP0nZLTfcgSAh8aFdxIxoTMDc7LxM8nuuLXxu3JZuLpXxM4E91NBSQvZrWJXJMW07L+g8IuesvTC8gqDRt8UintxwUc1/P/QsNsdOhA/RmiBEk75tKxGmJMHjJmSONmYMofG3FqM+Q0hNta09Xz/QKIDdCPRbS+4cgGDEDqtvW0WXEC/DX07skg1k2plqlPPV7ziUQUBqetXV8BqCjnz/TaCeOmH++Z1/tOb4Mty63+/OHg0P1wdDbY7rx5NqojJVRME/PMOFSNJqFWFPI6ICCFLuFe0/ypmOje+BvlcWmRoUfy
X-OriginatorOrg: fugro.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 406b2605-c533-465d-8033-08dec85e9970
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:42:55.9753
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3b48527-4cbe-42a2-b4d2-11b3cc7a86fc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UAJ2SkzGb23Sp9JoiTA5mtNyQjVfDsYPg0CloYnx0ppBVjaoyZTN9JTepjqpFWszrlCQXiLMbvlUXUru9v05PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5315
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA3OCBTYWx0ZWRfXzJx/uLier1Se
 Bf/z0IYtPhgaqphCqz/0aM/M8uJqcFo55gERTm12j1kfphQ867cgrCX14AuMjKV58ZTxo/YTzfx
 Ap/GsxW2Na5m2U/psmZUJqqH4v95fAh/suATXlxoDgG/25cBC2cNfUvNeAkQbSqkrqtKwKyohyi
 noRh929bpwMm1W3lv8x9uQOv0nzpMeuMnNDVGPEFeWVJ0bG+YuL8ChCPs3JRswGeoOgCiDGA6BS
 pkgsNSk4GhyE8evaCAUrYkbU1VddZqswNxUbX21m8Knh1c3QpnLI8XTyHJTysbvzgSvDTOh3X5e
 JPLSced5asm0yiJIP6ADTnKUAFH2UEyLQzDSbKpZ40pvc/4xCg2F75q5JAd8r3zx0S2N7+FcoI1
 2/kKWLtZHquTPZTcQoYzhPGKcDQ08mXYNqmKOWaTxIm/kIDbXZg94nwyWF2D/4qjytzkW3/W/tE
 eit/Egkbx1dQYfe8nVA==
X-Proofpoint-GUID: o1WoP5CPuDU0TnbKNRJiVVoPz4J24-l8
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA3OCBTYWx0ZWRfX30WmShuoleNI
 lpmpQIXL9GQS0Z1H0DT+gA2H0wj5E4rtCgGT6kWoUJV7JbJMUbT1Z40TYyAZpGF86nOyozfhmC7
 u6wYpluDieXzoPuzGB9HguvtueD+R7w=
X-Proofpoint-ORIG-GUID: o1WoP5CPuDU0TnbKNRJiVVoPz4J24-l8
X-Authority-Analysis: v=2.4 cv=FdgHAp+6 c=1 sm=1 tr=0 ts=6a2bc694 cx=c_pps
 a=mw7aCRCFlb22yk7hlIuqAQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=ZfOrz009xn0A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CzfQkN5Hhodbu-m26Zdm:22 a=9ElWCkCKTgoql28QNIiQ:22 a=etiEgX_XAAAA:8
 a=vuG43dFKch2sPAOkMGIA:9 a=QEXdDO2ut3YA:10 a=MLbIUA-Bjd6y1alW9qBG:22
Message-ID-Hash: AHJ5U65VG4U5DZGGE4Y2LUCMSGLHFLHM
X-Message-ID-Hash: AHJ5U65VG4U5DZGGE4Y2LUCMSGLHFLHM
X-MailFrom: prvs=06237f065c=j.rognskog@fugro.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 frequency shifted
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6CKFFJ5XKDLZSJF2EENAZQK45QBGUTN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rognskog, John-Harry via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rognskog, John-Harry" <j.rognskog@fugro.com>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.zaeske@syss.de,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[fugro.com:s=ppselector1,fugro.com:s=selector1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,fugro.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[j.rognskog@fugro.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0946F677E53

SGksDQpJIGFzc3VtZSB5b3UgYXJlIHVzaW5nIGludGVybmFsIGNsb2NrPyA1a0h6IGlzIHdpdGhp
biBpdHMgc3BlYyAoYmFyZWx5KS4gTXkgdW5pdHMgdmFyeSBpbiB0aGF0IHJhbmdlLCBhbHRob3Vn
aCBub3QgYXMgbXVjaCBpbmRpdmlkdWFsbHkuDQpLaW5kIHJlZ2FyZHMsDQpKb2huDQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBDaHJpc3RpYW4gWsOkc2tlIHZpYSBVU1JQLXVz
ZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gDQpTZW50OiBGcmlkYXksIEp1bmUgMTIs
IDIwMjYgMTA6MzUgQU0NClRvOiB1c3JwLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bT4NClN1YmplY3Q6IFtVU1JQLXVzZXJzXSBCMjAwIGZyZXF1ZW5jeSBzaGlmdGVkDQoNCkhlbGxv
LA0KDQooU29ycnkgaWYgdGhpcyBpcyBhIGR1cGxpY2F0ZSwgSSB0aGluayB0aGVyZSB3ZW50IHNv
bWV0aGluZyB3cm9uZyB3aXRoIG15IGxhc3QgZW1haWwgdG8gdGhlIG1haWxpbmcgbGlzdCkNCg0K
SW4gdGhlIHBhc3QsIHdlIHVzZWQgYSBCMjAwIGFuZCBzcnNSQU4gdG8gYnVpbGQgb3VyIG93biBM
VEUgY2VsbCwgd2hpY2ggYWx3YXlzIHdvcmtlZCBmbGF3bGVzc2x5LiBBZnRlciBzb21lIHRpbWUs
IHdlIHdhbnRlZCB0byBidWlsZCB0aGlzIHNldHVwIGFnYWluIGJ1dCB3ZSByYW4gaW50byBhbiBp
c3N1ZTogVGhlIHBob25lIG5ldmVyIGZvdW5kIHRoZSBjZWxsLg0KDQpBZnRlciBsb29raW5nIGlu
dG8gdGhlIHByb2JsZW0gSSBub3RpY2VkLCB0aGF0IHRoZSBvdXRwdXQgZnJlcXVlbmN5IG9mIHRo
ZSBCMjAwIGlzIHNoaWZ0ZWQgYXJvdW5kICs1IGtIeiBhdCBhcm91bmQgMi42IEdIeiAoVmVyaWZp
ZWQgaXQgd2l0aCBhbm90aGVyIFNEUikuIFRvbyBtdWNoIGZvciB0aGUgcGhvbmUgdG8gZ2V0IHRo
ZSBzaWduYWwgcHJvcGVybHkuIFdoZW4gSSBtYW51YWxseSBhZGp1c3QgdGhlIGZyZXF1ZW5jeSBp
biBzcnNSQU4gdG8gY29tcGVuc2F0ZSBmb3IgdGhlIDUga0h6IHNoaWZ0LCB0aGUgcGhvbmUgaW1t
ZWRpYXRlbHkgZGV0ZWN0cyB0aGUgY2VsbC4NCg0KQXQgbG93ZXIgZnJlcXVlbmNpZXMsIHRoZSBz
aGlmdCBhbHNvIGdldHMgbG93ZXIuDQoNCklzIHRoZXJlIHNvbWV0aGluZyB3ZSBjYW4gZG8gdG8g
cmV2aXZlIHRoZSBCMjAwP8KgIEJlY2F1c2UgdGhpcyBleGFjdCBzZXR1cCB3b3JrZWQgaW4gdGhl
IHBhc3QsIEkgdGhpbmsgc29tZXRoaW5nIGhhcHBlbmVkIHRvIHRoZSBiMjAwIHRoYXQgY2F1c2Vz
IHRoaXMgc2hpZnQuDQoNClRoYW5rcyBpbiBhZHZhbmNlLA0KQ2hyaXN0aWFuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
