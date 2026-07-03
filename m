Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id djllBW2RR2pRbQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 03 Jul 2026 12:39:41 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 202337014D8
	for <lists+usrp-users@lfdr.de>; Fri, 03 Jul 2026 12:39:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=X8iMgYKh;
	dkim=fail ("body hash did not verify") header.d=emerson.com header.s=email header.b=lkKdio+T;
	dkim=fail ("body hash did not verify") header.d=Emerson.com header.s=selector1 header.b=PtUbhHH6;
	dmarc=none;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0642386A47
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2026 06:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1783075178; bh=OZT2EWO6MXTF+Mn01+QokxFtDmbtmV1tTuuYWfM/pRc=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=X8iMgYKhXPiX/YsAVT6gaSYwCD0iztKmYtgoSAn0l2XzihnOQWjH/6wLpbud/UZiR
	 qP+ZrfUfBMJc4j2dZ3MsOVzJbr3jIvrG+W7oItfo0v0lFmy18X6bdwCk4eDTIXny6j
	 vHtpJvCkARCvEu1+abKbXivfRFWnYbRGHuCoGr9kz36isIpqzQAd3Dz4Tb7hVPZepU
	 4z6Pv1gVpaVGfytV/zei0XiVthtxL1WwrHnUm0y6Nbj1T/8cGKwzAmK5J5RS1cbev9
	 UJgrjsJcbFD/pbsbybLKUzpbJY031gZVvhNCAn20gTUBHABv5pLhWpSizusN26yUz3
	 +kSAJ30/eq6QA==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 81167386961
	for <usrp-users@lists.ettus.com>; Fri,  3 Jul 2026 06:39:24 -0400 (EDT)
Received: from pps.filterd (m0484888.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6639lIxE1132588
	for <usrp-users@lists.ettus.com>; Fri, 3 Jul 2026 10:39:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=InyhBRVX3s4YvUjutH/FhOt+TFoN
	FPvCGV06tINXF0k=; b=lkKdio+TuxDJBXNOMJuy9ybTd41bktT+aBOHCLe1OiKJ
	GSOl41FLLqBFB8s7M3hOIM/kyas02SjxJXFJQP8b21UuSOot8su8N1ILJagXTNc5
	4SgXkkolEg7qEu+aX5UQdY/KXfZ8e4A9eCTNNxFYPPoW76w/fM6Tq0icKumj0Omk
	20MS+JBUVyExCUsQH1NVanswjqODnIr+4h2XUWRjBLTwhX8e80ElGxrHfTdl8OgM
	imYFUZn+BqH4Oq98o8hcExkuy8vjEzvLS3htz1zXSwfr7u77vwCQGNplyh4scZse
	sxT8qY5qgaQqYDUQwMgPkxyvw+qK7KioeAHO3zOqUg==
Received: from cy7pr03cu001.outbound.protection.outlook.com (mail-westcentralusazon11010071.outbound.protection.outlook.com [40.93.198.71])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4f69fbgv99-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 03 Jul 2026 10:39:23 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MR3QV4wQb1DegjwQeDoQl+2S7K6kTdaLiJWsKlyDmSwJBZq8hy1UbYvh6c0sEMr7fFCZ2sicv+Y4/C15zCAA3ILHPbR47VJTfo9jtwG9khEH7xrK6n2j+ybVnkVwjLTcbYRfFOSs/DeoGV3PICAKlhlwU+gfJiYTX3yLdOrTRdenLTnjmuKS9gWG5lFCLQ9clKsmDZ+bxYu+UYLs2IkK0f/3udd2ceHxK78UjIqxmqlHjqARnq7vD+BBjGQtCpQremFpieiDQgjZYwgXdKPA226tKnsOC3KAQi5nzmHA0KKFjCvSRlDcwQH3ZN/eYPLs5+WRfllWfl7DYJMXq/Jg0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8It75+9YqimDiNCfyBZObcfCua9/EHS1s//6OsaF8Go=;
 b=sT7jw8U2CahE8gT/8lds1aToWcCj/uLTwjT4pI0QXPNsi5ceB/+QdwExQ2Yp25jK+/Jtm14mfeSm7xdwGvKGQulegRlOtBGbqre8k9OyxPdTR6oqAmmznale2fsmKIFYEeKO7hzGWaWh4W9nDSdSCSMG+tprlZt8Lt55xwtaTwF0/HR1ypEf4ziQws1uZd6dJAKSCrjROcTKyTOoAe7+atqvZcClVb1VFwrYm3Ofot6VwGh4mWJRq1Hbtc7kChR1mFhluu+kVqy7cFWi8lW1YRwouL/5SqBwR4c6iTAOudh9RFG6lkZwqNWur7zBhLOzkaUNzPm2EhGbNRmGqodZDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8It75+9YqimDiNCfyBZObcfCua9/EHS1s//6OsaF8Go=;
 b=PtUbhHH64GuWinMt6RDJdjtGSkOEWl7Zt7h7fi/2ZJm90pGFyalzyyslckzwoEczUrOyV8m6LiinoGSUmZzohOwXUNmIvYfKQVUnL2IZvSCn2jKvcKLYdkPcHksH3T/ZLyR5AfmXFYL7pBnO2sOKx+LXCcZjAww4+UtkJDjm744WQIzm+mUJygJyuu6Jk9pdevUbSNwh2UfesYywtGvRJEeyObaYbzBVJeBAeutANmZMX2BZnijpEaF2zXCpbOxYIbH9bZ1dVuOYOIoEBT+Jb/sa3F5NGhRa0IZWCMOwaW4oI2UXrKgr3CBxfcIvOjyckd5Ul7iv/LGoqmvQzPHr6Q==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by CH0PR10MB7534.namprd10.prod.outlook.com (2603:10b6:610:190::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Fri, 3 Jul
 2026 10:39:20 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%3]) with mapi id 15.21.0181.010; Fri, 3 Jul 2026
 10:39:20 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflows on X440 TX
Thread-Index: AQHdCtg09S7AncsVmkuizcthxRFMzQ==
Date: Fri, 3 Jul 2026 10:39:19 +0000
Message-ID: 
 <CH0PR10MB5179DC56E53E0771FCB8109199F42@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <SJ0PR09MB91269679895FCEA5C6F8A3DCECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <9F969F1B-75D0-4621-8FE8-4384D26A6594@tum.de>
 <SJ0PR09MB91266AD4901565D18F6E7FCFECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB9126558CB1A60C27887C17DDECF52@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126558CB1A60C27887C17DDECF52@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=4e8ad7fe-78a0-45c6-8dae-02d019f455a3;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2026-07-03T10:39:11Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|CH0PR10MB7534:EE_
x-ms-office365-filtering-correlation-id: 65441197-4292-419c-78cb-08ded8ef56ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|23010399003|376014|1800799024|366016|38070700021|56012099006|4143699003|6133799003|11063799006|18002099003|22082099003|8096899003;
x-microsoft-antispam-message-info: 
 awaZM58avqHJRZ+0oGUsOnxih91lWXQpYHo9MErGARdPVxjrtUys7me3vkZYQG8Knak68ew6RgF6EP3Axy4cEeUeHJajVO24eTZzVXy32wVOpGdBPQrKundp0Ch+SjDWG8kfGcu9yHSbRHeV5bpG6FpdEzwz7aqv7HooJVoPHxS0NeVLcpbc7k4aZ2WA6o5qCTY8qtS1GuBKUMLBMX5EKrlinMXHj0sMyTG71FmefgHGyPdm8AP/0dszpBx1S4B1srpx47eyaX2hWoxVSlY/SZ9PvwqCsjOEAp++Y/5ca8oOWaon13wmymYXwLXqzrpl99JJFjvZa+h/VuB3tZcJVAb+4ukx8h+pPLsR19jmIq4ISxoO2n1oOdUg5SNjhHqyM2cLNfTBh2Z1OaqWt8cEr3fJwb6nLblVuFcc7Z72lScDlXJiRfmMG6NUysCLUKCilaHSU0zyR8BirwZ3YsYy9WD4kZcbb8CR67aLbGjAhcAuP566sNdcQ3wPn5RaDZlFHQRQ7UiwbR0zLrvRkhHzIVAnsKBRMUXDcx2wfjA8mzwGgrJFZR5N3jwcmQcGb/GAb86YJIE5+lt/Ml+ejA+YC2zbBAX4g/HK0ADLgcKb+y2+PAzelEadAK8T2OGe8xOUctQOq471dMwkYFfRhVcfkuZt5RshdtSSp0W9HNBf9eQDumIpN8MqB3P9PB22mK/S+qUPDtnckaaLeZODS2zhb2G+3/rHwgYrUHkklfHGheE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(23010399003)(376014)(1800799024)(366016)(38070700021)(56012099006)(4143699003)(6133799003)(11063799006)(18002099003)(22082099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZkVOYWo4VHhRTi9CQ3QzZGJKZFVMVUl1d0MwYkFJeDZYSnFXajNFNWRvNFhF?=
 =?utf-8?B?emhqcGxRUkxUM05EVm5KOHc4bnIvTWdwcUdxRHVSN2g5NWdYdXBnbG95anNp?=
 =?utf-8?B?bWdXZXkyWWRsNzY4Wm5MVGVaTjB3U21LQjFqbHl2Vy8xbDFKWDRDMHVPZll2?=
 =?utf-8?B?Z1RldEpKNzJ1YThFU2Z4eGE5eXBpajc1MkFpWGxmajFPY2RseEpDOTdSdFlO?=
 =?utf-8?B?VzZaYWx4VVpZREJ5cnVwOGhUWEdmWHg3TGUvTjBWanJTRklGQVY1ZFM0Umht?=
 =?utf-8?B?ZTJmSktOR3orSVBJbExvdTAyUXQ1NVd4VTdZeHBxbXBzN2pZVEJxOGZKVCs3?=
 =?utf-8?B?bCtaUkRtZit4UHRmK2YyYjd2b3hyaDhsZk5nR3JKR2Jlc3B0ZCtRYUdQeGVi?=
 =?utf-8?B?Z3Z1ZGQxdXV0dVVUVkpZR0dCMVAyNlppQlpWRm1uVUhST3RxUDZ5VkxUbjN5?=
 =?utf-8?B?dnR2ZnZsZzBwNTRFYS9OSnhzcy93SkZJRlRPVEFZYm1NaGxZbkR6KzNlaysx?=
 =?utf-8?B?bDhXZmNWN3RIZkRqOEkwNG9UM3drVDVROHpaMGJtb2x1cHVXdGhJaDNQVi94?=
 =?utf-8?B?QzE1Sk9EZzVVa3piMjRkR1BENFIxZGU2d081cm96dCs5bnNKMmJGMnBrSnh0?=
 =?utf-8?B?TGJDSVgvbFZBNm1DNmdFellRemhxMXFnSVJKcVpCOGZKT1VEYUl3L2JDZ3ky?=
 =?utf-8?B?OFc5OUM3bkk4VG9GcUx2R2IvWm1NY2lnbUNZNWZSb2RqWGZlSEVkb3p5WDhu?=
 =?utf-8?B?VmNkdzVHS2l6djU5bSs1bEE3T3Q2M3dTNENzOXZZWkNIUUNvdXJPNEkrOTFV?=
 =?utf-8?B?aEY4WlA0c3V3OUVCajIySFp1bVo4cFZFbGluNGhXNGhOVE00ajdpcVNXVnl6?=
 =?utf-8?B?RUlCSzJSNHZoblJtUnBKdm1vRWVMTEV3VVNncSsrb0tZU2FlcXJDMElCdEVt?=
 =?utf-8?B?K08zeVdLR3hXMVpjQTVXTXJqaFlYY2pwUDFWMVg4VEd1c0ltUmdERmxCSGFy?=
 =?utf-8?B?RXBLVDliRWxla0o4eTF3RDcyTW0xQWdDUXh6UmNiZjFFYUpQOXZ0UU51Um90?=
 =?utf-8?B?cnBURnc0QU9YTjlrYk9KOExwcFBKQlVZYmtGSkNNQWZyaW81NU14bVorbERZ?=
 =?utf-8?B?T2FYb3VoaDQvSDgydUJnMGVmTldNYkdaVjAvUm13VzFocGtmelhRYm1GTFox?=
 =?utf-8?B?bEVpZXYzb0pkUFZ3WHRjQzFlem5SN0dpcXZwa1hDQ1VOVTAxbWZPcitDZWpB?=
 =?utf-8?B?RUVrazNsM042dERPUzNKNW5lSFBhSThJa1VpclFPalN3TDM2L3VzL0hnQXhM?=
 =?utf-8?B?eWFwbVdoSVlxS1I0Y2s2TUpsZ09aRVYrdDQ4dXovL1kvWGNmUHZEYjBrY0Y1?=
 =?utf-8?B?UC9aanhkaG1Ld09pc3huYmhpYk9aREN3Y3Fmb1JGemYybithbkhPdDlETG5T?=
 =?utf-8?B?WVI3K09UeCtCRFFHaEU5TFFnUEFQRWZ5Nitxek9ZV01nam1WS3pmek1RV3VF?=
 =?utf-8?B?Q21UYXMvd29rWGwwVG5MNGhRRXpoOWt4Uk82UC9tQVNvdDNoczhLcVJ5NmRH?=
 =?utf-8?B?cm5icWlQNDFuUnZKSE5IaE5BSXdRNUdNZEZWbkIrdktJYXlhZWlHR3dzdlN2?=
 =?utf-8?B?ZGtZUTJxUnNmYlZFMHZINVhhVGJCOWNxMWZtMU9TWExkMDZodCtjWklDdW5R?=
 =?utf-8?B?Z1VTMmk4emJJUjkwUUtEKzJIejVEc2Q0MzJrTDRJVHFMS0x4RWEzcmoxYVhv?=
 =?utf-8?B?K01qSmtqZ2ZyV2E4R2VCc0VkQmM1OFNOWXhldEdYd1pkR0pxRmFhNEpsSXBk?=
 =?utf-8?B?NmNtd21sRVBEM1F3bjZ1SkhweU5SZE4rMVNCK0lycjJJcWhRbnpIODZKNU1o?=
 =?utf-8?B?MXI5MFRoY0V2ZHhrMDcrSEdOS1ZaZzM1T3RkSG5lbzEvMHAyd1IvbVBSRklq?=
 =?utf-8?B?QjduVlNHQ2FpbjUzVnZpSzRKd2cyOWhHa2dzNXRpUkpFTXlJSjlFMGlCOWFh?=
 =?utf-8?B?Zk5SZnllRUhheTl6OHJHL2YwNnE3L3QydnUwZDhSOUE3d1JpMWRpVzFtLzVy?=
 =?utf-8?B?VnZISUpRLzN6Rk5tTjFSNm5DbUE5Q1QxbjJYOTZVWDlOalVPQjlsV0ovcnRP?=
 =?utf-8?B?U3F2WERZb3gxbFZIckk5UXNWemNhSWtyQVRMUnpOdjhoYmRnRksrL0RkdjRZ?=
 =?utf-8?B?WThLNkxlbklFRzlKcjdZR0YxZ1dKeUcyZXpRek9yR0RMQ09Pa3h1RVlDdHg4?=
 =?utf-8?B?TlZFZFVYMGs0VFA1V1J1SzhaL3pTSldyMHhFdDlkT2paQXhHRzh0NXY2ZGtH?=
 =?utf-8?B?ODBCdS9Tb3JLbEE1MHh2dituOG8zbGk4Wm9OUTVvbDFDMG9CNzRYZz09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	UVtLvUcMx12erZpgv7pqKuud0A8Y20R/v1bi69hHF9LiQpuMky2iqxKXX8JW48lTKRVHJSdnVEHjmPjLOiiSoD1HQd1VHIGtndEr1JJRSIo5R4JekZPmxMm44An3xEay4DStARhq8HRt3HqXX8D6kMZ8Td7t2r+VMRJ7GZl/pczto1orEoBGuBCnmDtA1u9whA86hORGirZeXOeMM5D2k5g02i082/+GmA1dqFUTiKfxrIV3WSMM6pkQILwfU13xVN9z/u/il25osCkgUptyp/i7H8ZAyNUIpHIpH3QAlYwhxFcnE7dLWmM6ayadQOJyu2hkZMMhVlzewfNQrh1xQQ==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65441197-4292-419c-78cb-08ded8ef56ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2026 10:39:19.9995
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pCVp4doVV7gQxdeWjRcIFKk8Mm9Qi4KZa2xHC7FSJ4lcKnyWgNpvMPprkX5Bvq6M5DVi8vN1rwncs47gY/e2RSGtwOPsqolxOmfM3XvyKRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB7534
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDEwMyBTYWx0ZWRfX0JPEn4jKXIgT
 JeUy5xRjUu1qO1PwvPJ15T5EYEzYPW4QPys0IEf2pYv8CYi2AsrSby63sGjHS1qm1U/+C/oFZcy
 +IzRuA/UGi2KovD5EvTQTHEwWRTfVOqeW3XIg1JqYb7/AzQs/k176B9oWp86bIIIQ5hABy4y7gW
 ym8MFnLzlckzZ6E2ElipV4qf6mMq/eNKUGVr9VQkJubuDvHUpPNyZwrsxcXo+p74/Ci7k+8WbXp
 6oeow9Xq8mUKAOUB9MIGONiNbL0qsDA5VGP4YHEjwI8OUbSIBYthdKgpp+RoPK7xoKbPZ6rGKDi
 V0hE2IeF7gkw3ZZKS9R4zI/QxNNGcprsR8h3fOHVcrpLGm1uWEItyFqmjYFDI6nBlbcCfZx0iri
 mtNPy3ab4bF+XVTiMUwv0Sm/OdIGZkdzmoiRfzeM7CCKZV0y/flE3RY1yr6RZGbpOrJ7fqhAYe1
 vaiw6yKI2Gx1by9dnEg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDEwMyBTYWx0ZWRfX9vWOM3Zw2Si3
 hbd3GABv/XtOAoBE3OMVMvGHuS3+9jrjUo5+teifoOJXIRvI/O1QDqHc7QOd25mI+IuLuEvAt0B
 E+eHE6SubYMPQbTfCq0gX8dDOVQWWvEavwcnk+0fEN5Kzg5hFsVz
X-Proofpoint-ORIG-GUID: 1SfS8lJwUIqdPDr4nc0HnvQlt6sh1pnP
X-Authority-Analysis: v=2.4 cv=AeOB2XXG c=1 sm=1 tr=0 ts=6a47915b cx=c_pps
 a=4uekZJdLSFpbpqOwIdQ1dA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=rxKZZrb6P1uLbvnKrN09:22 a=RpNjiQI2AAAA:8 a=8CGCo7kxAAAA:8 a=etiEgX_XAAAA:8
 a=VkBjcGNUDpQwaB5fiGQA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8
 a=SSmOFEACAAAA:8 a=OC2YvZNlAzjKDH5NBbIA:9 a=GfZ0Sb_pjij76nL1:21
 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=uyKDLsAT3yn652Fg1vMC:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-GUID: 1SfS8lJwUIqdPDr4nc0HnvQlt6sh1pnP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030103
Message-ID-Hash: U6K7C7ASDJ5QXPJTOTRCLSFNIRTSBHRG
X-Message-ID-Hash: U6K7C7ASDJ5QXPJTOTRCLSFNIRTSBHRG
X-MailFrom: prvs=86446420ef=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows on X440 TX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W5D2MQSITOHDGZDJKKL56I75NFD5TTCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============8968344036198067057=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	TO_EQ_FROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[martin.anderseck@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tum.de:email,CH0PR10MB5179.namprd10.prod.outlook.com:mid,ettus.com:email,emerson.com:replyto,lists.ettus.com:from_smtp,lists.ettus.com:from_mime,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 202337014D8

--===============8968344036198067057==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179DC56E53E0771FCB8109199F42CH0PR10MB5179namp_"

--_000_CH0PR10MB5179DC56E53E0771FCB8109199F42CH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

I just tried to reproduce the issue on our end to verify if we have missed =
something during our release testing. For this I took UHD 4.10, an X440 con=
nected to a switch but from the switch I only have two lanes going to my ho=
st computer. So that should be comparable. I didn=E2=80=99t have DPDK confi=
gured on the host, so I went without that and used exactly your rate. I cou=
ld reproduce that we start failing when we reach 8 channels with only one l=
ane, but 7 were still fine. Then I added the second lane and with this, eve=
n 8 lanes worked without a single underrun, dropped samples or sequence err=
ors.  I could even increase the tx_rate to 61.44 Msps and it still worked f=
ine. I also tried with and without mgmt_addr parameter which made no differ=
ence here.

Please check your cables, IP configuration, and MTU config (9000).

Best,
Martin

From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Thursday, July 2, 2026 8:37 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Re: Underflows on X440 TX



Responding to martin's question:

  *   Yes, I have a QSFP to 4x SFP breakout cable

  *   The underflows happen even when using just one USRP (i.e. remove all =
references to the second one from the benchmark)

________________________________
From: Eugene Grayver <eugene.grayver@aero.org<mailto:eugene.grayver@aero.or=
g>>
Sent: Monday, June 29, 2026 1:17 PM
To: Peter Jiacheng Gu <peter.gu@tum.de<mailto:peter.gu@tum.de>>
Cc: usrp-users <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.co=
m>>
Subject: Re: [USRP-users] Underflows on X440 TX

I have not tried the X4_400 image because I need many channels at relativel=
y low (50 MHz) bandwidth.  This issue must be solved =E2=80=94 I've been ab=
le to use older USRPs for TX at rates up to 200 Msps.  There is no reason f=
or the X440 to behave this way.
________________________________
From: Peter Jiacheng Gu <peter.gu@tum.de<mailto:peter.gu@tum.de>>
Sent: Monday, June 29, 2026 12:23 PM
To: Eugene Grayver <eugene.grayver@aero.org<mailto:eugene.grayver@aero.org>>
Cc: usrp-users <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.co=
m>>
Subject: [EXTERNAL] Re: [USRP-users] Underflows on X440 TX


Do not open links or attachments unless you recognize the sender. If unsure=
, click the Report Phish button or forward the email to OPSEC.
Hi Eugene,

I also encountered this issue. I=E2=80=99m currently investigating the X4_4=
00 image since it supports the replay block. Have you already tried this?

Best,
Peter


Am 29.06.2026 um 21:02 schrieb Eugene Grayver <eugene.grayver@aero.org<mail=
to:eugene.grayver@aero.org>>:
=EF=BB=BF
Hello,

I am returning to the problem reported a few months ago:

I have two X440s with X_200 image connected to a Threadripper 24 core.  I a=
m using two 10 GbE direct connect cables for each USRP (total of 4x 10 GbE).

I was able to get RX working, but TX is getting continuous underflows.


  *   Using the benchark_rate example.

  *   Underflows observed both w/ DPDK and w/out DPDK

  *   Underflows observed with 4, 8 channels and 16 channels

     *   Fewer underflows with 4 channels, but still get a few per minute

  *   Priority high/normal does not make a difference (usually)

IMPORTANT: If I use only one interface ( =E2=80=94args=3Daddr=3D192.168.10.=
2,mgmt_addr=3D192.168.1.10) there are no underflows with up to 7 channels (=
max to fit in 10 GbE).

./benchmark_rate --args=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,=
mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,=
mgmt_addr1=3D192.168.1.20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,=
product=3Dx440 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc1=
6 --multi_streamer --duration 120

This should be trivial for such a powerful machine!

I am suspecting an issue with handling of packets across multiple network i=
nterfaces.  Are the TX flow control packets not getting to the right place?

This is a critical failure =E2=80=94 not something I expect for a $35k box =
=F0=9F=99=82


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_CH0PR10MB5179DC56E53E0771FCB8109199F42CH0PR10MB5179namp_
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
@font-face
	{font-family:"Segoe UI Emoji";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
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
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1026364789;
	mso-list-template-ids:-1600082820;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1621643674;
	mso-list-template-ids:-1756876596;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Eugene=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">I just tried to reproduce the issue on our end to verify if we have m=
issed something during our release testing. For this I took UHD 4.10, an X4=
40 connected to a switch but from the
 switch I only have two lanes going to my host computer. So that should be =
comparable. I didn=E2=80=99t have DPDK configured on the host, so I went wi=
thout that and used exactly your rate. I could reproduce that we start fail=
ing when we reach 8 channels with only one
 lane, but 7 were still fine. Then I added the second lane and with this, e=
ven 8 lanes worked without a single underrun, dropped samples or sequence e=
rrors. &nbsp;I could even increase the tx_rate to 61.44 Msps and it still w=
orked fine. I also tried with and without
 mgmt_addr parameter which made no difference here.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Please check your cables, IP configuration, and MTU config (9000).<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Best,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Eugene Grayver &lt;eugene.grayver@aero.org&gt;
<br>
<b>Sent:</b> Thursday, July 2, 2026 8:37 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Re: Underflows on X440 TX<o:p></o:p=
></span></p>
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
<p class=3D"MsoNormal"><span style=3D"color:black">Responding to martin's q=
uestion:<o:p></o:p></span></p>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1">Yes, =
I have a QSFP to 4x SFP breakout cable<o:p></o:p></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1">The u=
nderflows happen even when using just one USRP (i.e. remove all references =
to the second one from the benchmark)<o:p></o:p></li></ul>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Eugene=
 Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero=
.org</a>&gt;<br>
<b>Sent:</b> Monday, June 29, 2026 1:17 PM<br>
<b>To:</b> Peter Jiacheng Gu &lt;<a href=3D"mailto:peter.gu@tum.de">peter.g=
u@tum.de</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Underflows on X440 TX</span> <o:p></o:p></=
p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I have not tried the X4_=
400 image because I need many channels at relatively low (50 MHz) bandwidth=
.&nbsp; This issue must be solved =E2=80=94 I've been able to use older USR=
Ps for TX at rates up to 200 Msps.&nbsp; There is no reason
 for the X440 to behave this way.<o:p></o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Peter =
Jiacheng Gu &lt;<a href=3D"mailto:peter.gu@tum.de">peter.gu@tum.de</a>&gt;<=
br>
<b>Sent:</b> Monday, June 29, 2026 12:23 PM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eu=
gene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Underflows on X440 TX</span> <o=
:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<p style=3D"background:#5E8AB4;font-size:10pt!important"><strong><span styl=
e=3D"font-family:&quot;Aptos&quot;,sans-serif;color:white">Do not open link=
s or attachments unless you recognize the sender. If unsure, click the Repo=
rt Phish button or forward the email to OPSEC.
</span></strong><span style=3D"color:white"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal">Hi Eugene,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I also encountered this issue. I=E2=80=99m currently=
 investigating the X4_400 image since it supports the replay block. Have yo=
u already tried this?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Best,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Peter<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Am 29.06.2026 um 21:0=
2 schrieb Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eug=
ene.grayver@aero.org</a>&gt;:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Tahoma&quot;,sans-s=
erif">=EF=BB=BF</span> <o:p>
</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Hello,<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I am returning to the pr=
oblem reported a few months ago:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I have two X440s with X_=
200 image connected to a Threadripper 24 core.&nbsp; I am using two 10 GbE =
direct connect cables for each USRP (total of 4x 10 GbE).<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I was able to get RX wor=
king, but TX is getting continuous underflows.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level1 lfo2">Using=
 the benchark_rate example.&nbsp;&nbsp;<o:p></o:p></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level1 lfo2">Under=
flows observed both w/ DPDK and w/out DPDK<o:p></o:p></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level1 lfo2">Under=
flows observed with 4, 8 channels and 16 channels<o:p></o:p></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<ul style=3D"margin-top:0in" type=3D"circle">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level2 lfo2">Fewer=
 underflows with 4 channels, but still get a few per minute<o:p></o:p></li>=
</ul>
</ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l1 level1 lfo2">Prior=
ity high/normal does not make a difference (usually)<o:p></o:p></li></ul>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">IMPORTANT: If I use only=
 one interface ( =E2=80=94args=3Daddr=3D192.168.10.2,mgmt_addr=3D192.168.1.=
10) there are no underflows with up to 7 channels (max to fit in 10 GbE).<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">./benchmark_rate --args=
=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D192.168.1.=
10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D192.168.1.=
20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,product=3Dx440
 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc16 --multi_stre=
amer --duration 120<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">This should be trivial f=
or such a powerful machine!<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">I am suspecting an issue=
 with handling of packets across multiple network interfaces.&nbsp; Are the=
 TX flow control packets not getting to the right place?<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">This is a critical failu=
re =E2=80=94 not something I expect for a $35k box
</span><span style=3D"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;col=
or:black">&#128578;</span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
black"><o:p>&nbsp;</o:p></span></p>
</div>
<div id=3D"x_x_Signature">
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Eugene Grayver, Ph.D.<o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Principal Engineer<o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">310-336-1274<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB5179DC56E53E0771FCB8109199F42CH0PR10MB5179namp_--

--===============8968344036198067057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8968344036198067057==--
