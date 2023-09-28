Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A20867B2470
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 19:54:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74D7438513D
	for <lists+usrp-users@lfdr.de>; Thu, 28 Sep 2023 13:54:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695923690; bh=qHaY9z7XjoBwhMZ7wzPiMsmJECCJDmKIYlDN15I4pWo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dZJAEjGfVfeXVhV0Qqd8NxoVM3AvAnODXyiJOvbCIPKP0RQbyvDhNWvVmiWwB1FKs
	 oDOID5a/f5wqhMu13vCVpb88bYyY1eGGdWRh71QlONMMfkp3uNxl8Qry9uyqTW5tMQ
	 ZJ3t1zBpSuljVMNuOVOevj8Nr+70R2MQ+471oaZX9AfMVufjHMvEqOyokI7ZDNjTZ2
	 nt416hZ3itgRAJ4SoxfNd3aR0f/qSwzu8XAfL5uvDFymQWt2HGn7xZMUkUTAstenhf
	 XEFQucEoeW7B5lQ3FlVEJyo4MN7zugVfpb8J7rMDUmG+oosvx7mL9VkkjbD/0W0E2h
	 rpMgQdDiyGZ1A==
Received: from mx0b-00000d04.pphosted.com (mx0b-00000d04.pphosted.com [148.163.153.235])
	by mm2.emwd.com (Postfix) with ESMTPS id AA610385145
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 13:54:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=stanford.edu header.i=@stanford.edu header.b="RjG129f5";
	dkim-atps=neutral
Received: from pps.filterd (m0102892.ppops.net [127.0.0.1])
	by mx0a-00000d04.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38SGS1kX032665
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 10:54:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stanford.edu; h=from : to : subject
 : date : message-id : content-type : mime-version; s=pps05272020;
 bh=OrAtC8BrBuVHEUhUXfnpavHF79qAER/sQPLskBpHRlU=;
 b=RjG129f5CpARy2dsAxuESZxhWPR1BzSFZ7GPJHn/0jMLCR5G6eZxewpwA1WbFmsRSBJv
 Tp4gQTIEv04vOEr2c6HakELiO7yR/1M3lmU/ihOR9wHKnhqH/py+SDd3Ml/xhXPbPsPY
 uaaIZWaq8HOktDagVCJnXQBdALGRQiFSmlc2t0Llkzb8sCKaQqFb5jC0KQsN6vfTWCXV
 wqw92cp3+FdjLT8syAer5P0rT4aibJwiCyxRNB9pfp9b4s2tkJcjtXCoKBlX3ni3e1j+
 R0I80LINjWJaO71WmDk9MywfFLtAsDaFHyi2Bos3OTJ+10k/wajJkQmFPyeoZFVoCJhV YQ==
Received: from mx0b-00000d06.pphosted.com (mx0b-00000d06.pphosted.com [148.163.139.119])
	by mx0a-00000d04.pphosted.com (PPS) with ESMTPS id 3t9vntu90r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 10:54:44 -0700
Received: from pps.filterd (m0195432.ppops.net [127.0.0.1])
	by mx0a-00000d06.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38SCgn8i006819
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 10:54:44 -0700
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2042.outbound.protection.outlook.com [104.47.57.42])
	by mx0a-00000d06.pphosted.com (PPS) with ESMTPS id 3t9y70qmuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 10:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V34xaJqp+5MN+uUg9FXyYswzDZ184M4UliIvknJJQzNYpi4P5ajmvRqe2KblKgVk3gwjtd1i0r2KnvCxEzB97ywtP20OhDL/khT62wPrl2aDAvjq1Yw4SyZiIBxVmXIxkzqxVaCSaEnc+h6zAXXMY2cUtJagjZWTp6KLLkzQCxQD30A5rbN0P52Ml1smBPKQf+BIllrKFUeriPmYbp8CEjmwwJUGibQHg9iLX0yG39EyvIpdq+RmA0FmGOzcxZwl5AAnTXIO/fEcS/VOlaGlOOe6SuOvyANgo/FQVVfUNyKT4TDu2vCLpBLT4j7iqjy0wYQ7Hqf8pwItY3sIlMWEIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OrAtC8BrBuVHEUhUXfnpavHF79qAER/sQPLskBpHRlU=;
 b=HqzyxRYThkFy3eCQj9z5ovG8+mZmFYF8Mg5fzCFoZ0ogxtwLuvCjr07k0gapXuyhEw9Tpb6DoBJbxqGpOVCeYI+AsAra0LMbRYG+cEIw68pN/izhVHtYIrXSUEJN2w3yn1o5fsEnFhQ75K5FWco8wgXdkjrQFHPL58QR9EHbhmZs0hJquH4tWnUGrkh0NoPeOd/FDUbsdTudee9CdsTHjp52lkN2g9UwQhDS4Py+qaZp9YVFfAlS2K33OrBsuNT8bfT5xS+5YwZyxUmSVI22jbUaah5AlfOphr9ex1EpoAea8cMjzGwbBWFvgrIJ0oN9HFyvxyQuOCIqdq7MWXdo2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=stanford.edu; dmarc=pass action=none header.from=stanford.edu;
 dkim=pass header.d=stanford.edu; arc=none
Received: from BY5PR02MB6929.namprd02.prod.outlook.com (2603:10b6:a03:230::9)
 by DM6PR02MB7033.namprd02.prod.outlook.com (2603:10b6:5:25d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Thu, 28 Sep
 2023 17:54:43 +0000
Received: from BY5PR02MB6929.namprd02.prod.outlook.com
 ([fe80::d445:9d8a:60ff:c76b]) by BY5PR02MB6929.namprd02.prod.outlook.com
 ([fe80::d445:9d8a:60ff:c76b%3]) with mapi id 15.20.6813.027; Thu, 28 Sep 2023
 17:54:42 +0000
From: Anna Lamkin Broome <abroome@stanford.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 Appears Laggy Using UHD 4.5
Thread-Index: AQHZ8jTc1zgcDH4ju02BIswmhF4jZg==
Date: Thu, 28 Sep 2023 17:54:42 +0000
Message-ID: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR02MB6929:EE_|DM6PR02MB7033:EE_
x-ms-office365-filtering-correlation-id: 0646da0d-82d5-42a6-1230-08dbc04bfe86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VIchudV6cGJI0XSjNKoQlaonhqnvjL6yOK6Xr+K5soBo8CguATRQkafc8STN0EIoJJ3rTmOtKGeQH4f7Wwn3tFICFot89DZpRPOJgM2RYxJMsESMt0b4nN6V5maCZstVbi8vpgu4DvhS+mwIk7x0rQr3lNnqfwdkp+bg2YSd4vnWLzslBU+1X6IX8j9Zdw5etHaxIRF2p5S+XOuw0Tww0pAlH0MUe9OC5UzPxqBsEJvjkBvhmk1AxkZ/dukYAGaozTir+ceGYeVEitZFpoWWSsxZKKu8Cw3Eb38dvQdA/Lkt5IZSsWAhMru5BaFKmxAjrh304JdG9hhjik8XIbbRNC/MordP2WXfPOSqxlqUXMhK2gbsjee1mVvjw7aotKdEicgwWNKs/W2DH8zeQGNMxmI99uaro/gpKi8UZWMhwQgil3dA54G79UXXYIeUhhJ/nz8u1XH3Y2IOZTkoMiFzi+EwNrVJWzgDgkGxJvDjUL5OaofIl6L05nRK3ynjt9PLS8R2Xh6SK99FZ87pqPywx6kTLEmzjsJxiLRLs+D7IytVbSEbYqpfruhUxwdLtZoQCS6NfbsJ0IflHkJBV1EPf/1iI6prFJWVsF5ty6DRjnIIeVYHQz/GLIwyQnsUsoR4FOauXMZmswOolO5rhvIjuA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR02MB6929.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(39860400002)(346002)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(2906002)(5660300002)(66946007)(76116006)(66446008)(66556008)(66476007)(91956017)(478600001)(64756008)(71200400001)(6512007)(75432002)(2616005)(6486002)(26005)(6506007)(8936002)(83380400001)(786003)(41300700001)(6916009)(8676002)(316002)(38100700002)(38070700005)(36756003)(122000001)(33656002)(86362001)(41320700001)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bkFxNWlCcWZrR1J0VUlmamxEWGF6L1dsNjlFYkRvNEN2ZVBMamp5OTk0bHQx?=
 =?utf-8?B?bDg2R2tDR3k3T1JpRDdON3lNT1hUZmhrdFpEN0VaQUx2OE9KcUVVVHJOTFlG?=
 =?utf-8?B?ZkJkNmhKMnNIWjRxR2hjQVRWYjNRUTFReEdxc2w3MFZDOHV1cjlZUWpaUHVa?=
 =?utf-8?B?dWlmUTFlTkpxVm9iTlUwYjFabGY0TUFJazZqZGptTjBXbWJHNnpzOExOM3Uw?=
 =?utf-8?B?VzNmamFQb29Vei9uVmhTWjgrQkQ5TUhXZWNxUXAybFYrRVN2dS9hU2hxeXUw?=
 =?utf-8?B?czVXd3BKcHFYMVR0QitBTzZqZ3lva1ZYWE13TEtzK3dqSHNkRjBMalRRQWFv?=
 =?utf-8?B?UHUxS1VGMmVvNEdkUEZGVWVKNVpXUjNhMkVlNEhMajBCZkV3Vm4ybGVUdHRR?=
 =?utf-8?B?ZTBvWVQwZDVKb0F1RTgrVHZCUGRkdDVWL1hYN0dUemdIaU42R1phRUZidStB?=
 =?utf-8?B?MWJQVzF5WHNCeXI1L2g2bGV1bzlyelNIU0hHV0hjY2Uxc29KMlk5eUViVFdM?=
 =?utf-8?B?V2U3dGt5R2ZBanlab09Wamp3SVJuZkE3cjBpb1REOEFGNVV1eDFQSCtwUmlQ?=
 =?utf-8?B?QmNsNWticWhUZmd4TktYR3hEaFh2SUU5dW9VNTkxd0xqNHloRWtKUHRxSktI?=
 =?utf-8?B?ZFJEeHJGV1hJR3hCaGV1U2tEekl6ZkdMbzNHaXlOSURpM0xxeDZwVDRuTjB6?=
 =?utf-8?B?b3Z1VGRMTEpDWk5Iby95bTlHUWNRa0VwbnRRNDFRelhGV1ZDRTV2Z1pCbE1S?=
 =?utf-8?B?UXg3ZHR1b2hKTU04TnBLL0lSNjhFMktZbzBiN1dTaGg2amFmQTYxZ1N1WWF0?=
 =?utf-8?B?c2JzdGFTeURPZDdWRVRVek1oM1Erb1VQYytyajM3UE1FT3RIUDBPYkk2endW?=
 =?utf-8?B?MEp3ZFJVUDM3SDVFOHhmSUtSU1crUnJYUEZaM0VsL1J4MjVwUVFuWVRpS0lE?=
 =?utf-8?B?TnpVRHI0enZaQjFHV01WbCsySEZsU2lmK1NCSFl4ZnF6REw2dWplakk0dDVV?=
 =?utf-8?B?dEJNbmQvU1pab2J2UktlY0dmc1h2ZGxkdmNQN2dvTU9pVThNbjA0cHJ2OWJl?=
 =?utf-8?B?N280eXlVdDIzc2JJV28xek5kWHUwQmw3cHFuM3VWSmNzVmkxbEFNZWdsYmNL?=
 =?utf-8?B?VjZGaUZqMWVQSkRUSktwV0g4dmp5djB0dWxBNGQ0RmNHMEFHa1NTbmpDd2lk?=
 =?utf-8?B?WUEvYVFTbWN4b1RKMzJ6MVpYN3pqZ3hnN2pjZE95VUxJdjhqOWdxeTBUOEZN?=
 =?utf-8?B?d2xHZ1VLOTNRNW8yN1lYTG1NdG02YXMydlVpdHdLbStHb212Qk5WenEzeWFV?=
 =?utf-8?B?cnlpTnpZRnNrd2FLMzl3RzF5UEVEZXo2RW9waFFSajlXT1BvVklKRkJhMGtF?=
 =?utf-8?B?OVFDUHkxMHpUaER5cm5DYXFBd1psK2VLM1ZIcEdHYkw2YUxnTDdwNVVnOUFh?=
 =?utf-8?B?VW5VaGNJVGZQdnRPbnVRYWI2NkdWckdYSE9oVzJob0p1WDdYeGNxMVByaGh0?=
 =?utf-8?B?cFNWRzNxb0xrZXBSMzl2SU84UmxtYktWSlNnZkxhbkNOcmFFMmJCNW9Gc0lS?=
 =?utf-8?B?eHNPeUhIcUc1WGRFTk9vbXI3eHg5Nk1hc0llNXRhNTZkSVY0Zk5keTBoU3ZP?=
 =?utf-8?B?Q2hRdEFTRDVWVlJOUnZVQ1VYRHgzVWkzQm4rLzBIdk9hclN1T2dHalBJaG1Y?=
 =?utf-8?B?MEsrZWNKWUh5NzBIcmhMSjhJdHdma3VxS0YwQnVka2UwcEJxZWk0T0JnaDJu?=
 =?utf-8?B?K1dERmJVeDE0T0hSdWYvS2pua3FaR2k2eHZOajVvMXZLWWVMUzd0SHFRQjUx?=
 =?utf-8?B?YURiUEtiUXVzN1pOb3pKRzdnSEN1R3pDSS8wcUJacFBtYzlFaWM0VWF4eDEv?=
 =?utf-8?B?MVlHUzFBbUh3TWd4N0xjWjlCYVdlQzFTTTVkZDBLQlIxM0w0bjdGeG0zNHBm?=
 =?utf-8?B?T0thUU84Y09rYm4yOWMvTUxBV1dWNzJRZTFvSkJMWjB3dWV2YjdVZzg1L1JX?=
 =?utf-8?B?WEMrMXZFdGtkMzUvT09wSllXZXNPMkEzbTJQdjdESVBHY0ZyWXpvbGNWWVR5?=
 =?utf-8?B?djJnSmFsWVdvMHJ0WUJiTHRJempRbzI2REVpRktoTG5hbXhFYVhQSEMwUlNI?=
 =?utf-8?B?TkFnaEZrTVFVMDRzYkh1RUMyVU0va3JnWk5jTUdYQnhUL3dKckZHUGdzOXhI?=
 =?utf-8?B?V0E9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	bzw0Z9gdduN8A9rTEhsQ04htNsTjFt7jAy3y6BWl7zS00cQb+5zPhlLvrB8fQs/CjPuJ0MV6+VYoIyHec65o6s6dQSuzxK6/zPwdMvyF80z/yHRWCynWpE7P/LeJ0RloYv4YkjTS1jCey/VkGlbazdYcQbuSXuiyrVn/DikZUS+5ro5aNmz5Mtwd5anqcAABz+Mpt5rQb7Vm4WZE5Y8YCu98WHans+w18tN7vEr43CZrlIPTETxFVZK2l4LP+FGxPunQv17JLLiO8JEQjPyCOB7uk4xyhiKjxY305VMTzePDkNzefis6M9Zre4rI5vVNpPJ9HwSsIfJDghJWOcCp4LfUKylwqn1nmd84fKn2skJfEjKqjciqOcWBRZuHLs0y5i0IidTGD26Xbusl1X5vIjsU/3azj1nK6zK5IZIa9IxV4ytY8SSAZ07lESuEVATseoztxjcT4tJ6pTnPvvM3k2M6pcOhM0nGXBGi/J59778MYYyO1ZFKdMNhpPgHqi3huVmlO5LRPdb3XkFwPm9YRDd3bnY5YJNMWkpJzthTlEFyCnLLhZDFhf6qhvgNExO6TZfmsFZTjIG5tXvpkxEvklWsFoc7oFuI8Kb5nFqwosU3eCIh05Y6h4MPnC5T/W6omsUpte9Yu2SMYTLPgc5WTFEkdVe0PxHgjSntC7m57dXgKEjzCvCIe7GcWTqusy4my1tTsqOExGW6bVl2POqjIGQmxXiVmVm1ll/Qha/zCa89okOVkpyJ7/yLzlj70UlvG8mbde5FeYGNXO7M/Cr81jB3zvCrHTboXnbgmlSvBRM=
X-OriginatorOrg: stanford.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR02MB6929.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0646da0d-82d5-42a6-1230-08dbc04bfe86
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 17:54:42.8276
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 396573cb-f378-4b68-9bc8-15755c0c51f3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6Jx316EYtceFjDQDK0aECyy7MM3BkZgsyleoBE8owGIuurWmdN4R/Kw8enh/72+Jj9SiuJq82ZD/4eKcImIkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB7033
x-proofpoint-stanford-dir: outbound
X-Proofpoint-ORIG-GUID: W9A7L905YxVIqFzZmgmKFKL_J4Mg8EJM
X-Proofpoint-GUID: W9A7L905YxVIqFzZmgmKFKL_J4Mg8EJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_16,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 suspectscore=0 bulkscore=0 adultscore=100 clxscore=1011 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309280155
Message-ID-Hash: LO46KABJ6H3KQLITF65JGQPHE6QB3JAO
X-Message-ID-Hash: LO46KABJ6H3KQLITF65JGQPHE6QB3JAO
X-MailFrom: abroome@stanford.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LO46KABJ6H3KQLITF65JGQPHE6QB3JAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9037869398311964947=="

--===============9037869398311964947==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6BD824DC90034D1790081FFF11B7D4E8stanfordedu_"

--_000_6BD824DC90034D1790081FFF11B7D4E8stanfordedu_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCldlIGFyZSBkZXZlbG9waW5nIGEgcmFkYXIgYXBwbGljYXRpb24gYnVpbHQgb24g
dGhlIEV0dHVzIFNEUiBwbGF0Zm9ybXMuIE91ciBjb2RlIHJ1bnMgd2VsbCBvbiBhbiBYMzEwIHdp
dGggVUJYMTYwIGRhdWdodGVyYm9hcmRzIHVzaW5nIFVIRCAzLjE1IGFuZCBhIEIyMDVtaW5pLWkg
dXNpbmcgVUhEIDQuMSBhbmQgYW5vdGhlciBCMjA1bWluaS1pIHVzaW5nIFVIRCA0LjQuIFdlIHdh
bnQgdG8gdGFrZSBhZHZhbnRhZ2Ugb2YgcmVjZW50IHBvd2VyIGNhbGlicmF0aW9uIHV0aWxpdGll
cyBhbmQgb3RoZXIgZmVhdHVyZXMgbm90IHByZXNlbnQgaW4gVUhEIDMuMTUsIHNvIEkgYW0gbm93
IHRyeWluZyB0byBydW4gb3VyIGNvZGUgb24gYW4gWDMxMCB3aXRoIHRoZSBtb3N0IHJlY2VudCBV
SEQgNC41IHJlbGVhc2UuDQoNCldoZW4gcnVubmluZyBvdXIgY29kZSBvbiB0aGUgWDMxMCB3aXRo
IFVIRCA0LjUgSSBnZXQgd2FybmluZ3MgZm9yIGJvdGggcmFkaW8gMCBhbmQgcmFkaW8gMSAod2Ug
dHJhbnNtaXQgb24gb25lIFVCWDE2MCBhbmQgcmVjZWl2ZSBvbiB0aGUgb3RoZXIpOiBbV0FSTklO
R10gWzAvUmFkaW8jMF0gQXR0ZW1wdGluZyB0byBzZXQgdGljayByYXRlIHRvIDAuIFNraXBwaW5n
LiBUaGUgY29kZSB1c2VzIHRpbWVkIGNvbW1hbmRzIHRvIHRyYW5zbWl0IGFuZCByZWNlaXZlIHNh
bXBsZXMgZnJvbSBhIGZyZXF1ZW5jeS1zd2VwdCBwdWxzZSBhdCBhIGNvbnNpc3RlbnQgaW50ZXJ2
YWwgKHB1bHNlIHJlcGV0aXRpb24gZnJlcXVlbmN5KS4gT3VyIGFwcGxpY2F0aW9uIHJlcXVpcmVz
IGEgaGlnaCBQUkYgYW5kIHdlIGNhbiB0b2xlcmF0ZSBzb21lIGxhdGUgY29tbWFuZCBlcnJvcnMs
IGJ1dCBuZWVkIHRvIGxvZyB0aGVtIGZvciBwb3N0LXByb2Nlc3NpbmcuIFVzaW5nIFVIRCA0LjUs
IHRoZSBiZWhhdmlvciBpcyBub3QgYXMgZXhwZWN0ZWQgaW4gdGhhdCBzb21ldGhpbmcgc2VlbXMg
dG8gYmUgaGFuZ2luZy4gQXQgc29tZSBwb2ludCBkdXJpbmcgdGhlIHByb2Nlc3PigJRJIHRoaW5r
IG9uY2Ugd2UgZmlyc3QgaGl0IGEgbGF0ZSBjb21tYW5kIGVycm9y4oCUdGhlIHRpbWluZyBiZWNv
bWVzIHZlcnkgb2ZmIGZyb20gd2hhdCBpdCBzaG91bGQgYmUsIGFuZCBldmVudHVhbGx5LCBzYW1w
bGVzIHN0b3AgYmVpbmcgdHJhbnNtaXR0ZWQgb3IgcmVjZWl2ZWQgYW5kIHRoZSBhcHBsaWNhdGlv
biBqdXN0IGhhbmdzLiBTb21ldGltZXMgd2hlbiBraWxsaW5nIHRoZSBhcHBsaWNhdGlvbiwgSSBn
ZXQgdGhpcyB3YXJuaW5nOiBbV0FSTklOR10gW1JGTk9DOjpHUkFQSDo6REVUQUlMXSBDYW5ub3Qg
Zm9yd2FyZCBhY3Rpb24gdHhfZXZlbnQgZnJvbSAwL1JhZGlvIzA6SU5QVVRfRURHRTowLCBubyBu
ZWlnaGJvdXIgZm91bmQhIFRoZXNlIHdhcm5pbmdzIGRvIG5vdCBoYXBwZW4gd2hlbiBydW5uaW5n
IHRoZSBhcHBsaWNhdGlvbiB3aXRoIFVIRCAzLjE1Lg0KDQpJIGhhdmUgdHJpZWQgcnVubmluZyB0
aGUgYmVuY2htYXJrX3JhdGUgZXhhbXBsZSB3aXRoIHRoZSBzYW1lIGhvc3QgY29tcHV0ZXIgYW5k
IFgzMTAgcnVubmluZyBVSEQgMy4xNSBhbmQgVUhEIDQuNS4gV2l0aCBVSEQgNC41IGFuZCBoaWdo
IHNhbXBsZSByYXRlcywgSSBnZXQgYW4gZXJyb3I6IHVoZDo6b3BfdGltZW91dDogUmZub2NFcnJv
cjogT3BUaW1lb3V0OiBDb250cm9sIG9wZXJhdGlvbiB0aW1lZCBvdXQgd2FpdGluZyBmb3IgQUNL
LCB3aGljaCBzdG9wcyB0aGUgdGVzdCBiZWZvcmUgaXQgYmVnaW5zIHJ1bm5pbmcuIExvd2VyIHNh
bXBsZSByYXRlcyBpbiBVSEQgNC41IHJ1biwgYnV0IHByb2R1Y2UgbW9yZSBlcnJvcnMgKGluY2x1
ZGluZyBzZXF1ZW5jZSBlcnJvcnMpIHRoYW4gdGhlIHNhbWUgc2V0IHVwIHJ1bm5pbmcgVUhEIDMu
MTUuDQoNCkkgaGF2ZSB0cmllZCByZWZyZXNoaW5nIHRoZSBGUEdBIGltYWdlIGZvciBVSEQgNC41
IHdpdGggbm8gY2hhbmdlIGluIGJlaGF2aW9yLiBUaGUgYmVoYXZpb3IgaXMgcmVwbGljYWJsZSB1
c2luZyBtdWx0aXBsZSBob3N0IGNvbXB1dGVycyAoTWFjIGFuZCBVYnVudHUpLiBJZiBhbnlvbmUg
aGFzIHN1Z2dlc3Rpb25zIG9uIGRlYnVnZ2luZyBzdGVwcywgb3IgcG90ZW50aWFsIHJlYXNvbnMg
d2h5IFVIRCA0LjUgd291bGQgc2VlbSBsYWdneSBjb21wYXJlZCB0byBVSEQgMy4xNSAoZGVzcGl0
ZSBydW5uaW5nIHdlbGwgd2l0aCBVSEQgNC54IG9uIHRoZSBCMjA1bWluaSksIEkgd291bGQgZ3Jl
YXRseSBhcHByZWNpYXRlIHRoZW0uIEkgc3VzcGVjdCBpdCBtYXkgaGF2ZSBzb21ldGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY29tbWFuZCBxdWV1ZSBhbmQgaG93IGl0IGV2b2x2ZXMgYWZ0ZXIgZ2V0dGlu
ZyBiZWhpbmQuDQoNClRoYW5rcywNCkFubmEgQnJvb21lDQo=

--_000_6BD824DC90034D1790081FFF11B7D4E8stanfordedu_
Content-Type: text/html; charset="utf-8"
Content-ID: <7085AA41A137FE489339A26DBB0A702D@namprd02.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJvdmVyZmxv
dy13cmFwOiBicmVhay13b3JkOyAtd2Via2l0LW5ic3AtbW9kZTogc3BhY2U7IGxpbmUtYnJlYWs6
IGFmdGVyLXdoaXRlLXNwYWNlOyI+DQo8ZGl2IGRpcj0iYXV0byIgc3R5bGU9Im92ZXJmbG93LXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgbGluZS1icmVhazogYWZ0
ZXItd2hpdGUtc3BhY2U7Ij4NCjxkaXYgZGlyPSJhdXRvIiBzdHlsZT0ib3ZlcmZsb3ctd3JhcDog
YnJlYWstd29yZDsgLXdlYmtpdC1uYnNwLW1vZGU6IHNwYWNlOyBsaW5lLWJyZWFrOiBhZnRlci13
aGl0ZS1zcGFjZTsiPg0KSGVsbG8sJm5ic3A7DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5XZSBh
cmUgZGV2ZWxvcGluZyBhIHJhZGFyIGFwcGxpY2F0aW9uIGJ1aWx0IG9uIHRoZSBFdHR1cyBTRFIg
cGxhdGZvcm1zLiBPdXIgY29kZSBydW5zIHdlbGwgb24gYW4gWDMxMCB3aXRoIFVCWDE2MCBkYXVn
aHRlcmJvYXJkcyB1c2luZyBVSEQgMy4xNSBhbmQgYSBCMjA1bWluaS1pIHVzaW5nIFVIRCA0LjEg
YW5kIGFub3RoZXIgQjIwNW1pbmktaSB1c2luZyBVSEQgNC40LiBXZSB3YW50IHRvIHRha2UgYWR2
YW50YWdlIG9mIHJlY2VudCBwb3dlcg0KIGNhbGlicmF0aW9uIHV0aWxpdGllcyBhbmQgb3RoZXIg
ZmVhdHVyZXMgbm90IHByZXNlbnQgaW4gVUhEIDMuMTUsIHNvIEkgYW0gbm93IHRyeWluZyB0byBy
dW4gb3VyIGNvZGUgb24gYW4gWDMxMCB3aXRoIHRoZSBtb3N0IHJlY2VudCBVSEQgNC41IHJlbGVh
c2UuJm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5XaGVuIHJ1bm5pbmcgb3Vy
IGNvZGUgb24gdGhlIFgzMTAgd2l0aCBVSEQgNC41IEkgZ2V0IHdhcm5pbmdzIGZvciBib3RoIHJh
ZGlvIDAgYW5kIHJhZGlvIDEgKHdlIHRyYW5zbWl0IG9uIG9uZSBVQlgxNjAgYW5kIHJlY2VpdmUg
b24gdGhlIG90aGVyKTombmJzcDs8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IE1lbmxvOyBmb250
LXNpemU6IDExcHg7IGZvbnQtdmFyaWFudC1saWdhdHVyZXM6IG5vLWNvbW1vbi1saWdhdHVyZXM7
IGNvbG9yOiByZ2IoMTU5LCAxNjAsIDI4KTsiPjxiPltXQVJOSU5HXQ0KIFswL1JhZGlvIzBdIDwv
Yj48L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBNZW5sbzsgZm9udC1zaXplOiAxMXB4
OyBmb250LXZhcmlhbnQtbGlnYXR1cmVzOiBuby1jb21tb24tbGlnYXR1cmVzOyI+QXR0ZW1wdGlu
ZyB0byBzZXQgdGljayByYXRlIHRvIDAuIFNraXBwaW5nLiZuYnNwOzwvc3Bhbj5UaGUgY29kZSB1
c2VzIHRpbWVkIGNvbW1hbmRzIHRvIHRyYW5zbWl0IGFuZCByZWNlaXZlIHNhbXBsZXMgZnJvbSBh
IGZyZXF1ZW5jeS1zd2VwdCBwdWxzZQ0KIGF0IGEgY29uc2lzdGVudCBpbnRlcnZhbCAocHVsc2Ug
cmVwZXRpdGlvbiBmcmVxdWVuY3kpLiBPdXIgYXBwbGljYXRpb24gcmVxdWlyZXMgYSBoaWdoIFBS
RiBhbmQgd2UgY2FuIHRvbGVyYXRlIHNvbWUgbGF0ZSBjb21tYW5kIGVycm9ycywgYnV0IG5lZWQg
dG8gbG9nIHRoZW0gZm9yIHBvc3QtcHJvY2Vzc2luZy4gVXNpbmcgVUhEIDQuNSwgdGhlIGJlaGF2
aW9yIGlzIG5vdCBhcyBleHBlY3RlZCBpbiB0aGF0IHNvbWV0aGluZyBzZWVtcyB0byBiZQ0KIGhh
bmdpbmcuIEF0IHNvbWUgcG9pbnQgZHVyaW5nIHRoZSBwcm9jZXNz4oCUSSB0aGluayBvbmNlIHdl
IGZpcnN0IGhpdCBhIGxhdGUgY29tbWFuZCBlcnJvcuKAlHRoZSB0aW1pbmcgYmVjb21lcyB2ZXJ5
IG9mZiBmcm9tIHdoYXQgaXQgc2hvdWxkIGJlLCBhbmQgZXZlbnR1YWxseSwgc2FtcGxlcyBzdG9w
IGJlaW5nIHRyYW5zbWl0dGVkIG9yIHJlY2VpdmVkIGFuZCB0aGUgYXBwbGljYXRpb24ganVzdCBo
YW5ncy4gU29tZXRpbWVzIHdoZW4ga2lsbGluZyB0aGUNCiBhcHBsaWNhdGlvbiwgSSBnZXQgdGhp
cyB3YXJuaW5nOiZuYnNwOzxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogTWVubG87IGZvbnQtc2l6
ZTogMTFweDsgZm9udC12YXJpYW50LWxpZ2F0dXJlczogbm8tY29tbW9uLWxpZ2F0dXJlczsgY29s
b3I6IHJnYigxNTksIDE2MCwgMjgpOyI+PGI+W1dBUk5JTkddIFtSRk5PQzo6R1JBUEg6OkRFVEFJ
TF0NCjwvYj48L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBNZW5sbzsgZm9udC1zaXpl
OiAxMXB4OyBmb250LXZhcmlhbnQtbGlnYXR1cmVzOiBuby1jb21tb24tbGlnYXR1cmVzOyI+Q2Fu
bm90IGZvcndhcmQgYWN0aW9uIHR4X2V2ZW50IGZyb20gMC9SYWRpbyMwOklOUFVUX0VER0U6MCwg
bm8gbmVpZ2hib3VyIGZvdW5kISZuYnNwOzwvc3Bhbj5UaGVzZSB3YXJuaW5ncyBkbyBub3QgaGFw
cGVuIHdoZW4gcnVubmluZyB0aGUgYXBwbGljYXRpb24gd2l0aA0KIFVIRCAzLjE1LiZuYnNwOzwv
ZGl2Pg0KPGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IE1lbmxvOyBmb250LXNpemU6IDEx
cHg7IGZvbnQtdmFyaWFudC1saWdhdHVyZXM6IG5vLWNvbW1vbi1saWdhdHVyZXM7Ij48YnI+DQo8
L3NwYW4+PC9kaXY+DQo8ZGl2PkkgaGF2ZSB0cmllZCBydW5uaW5nIHRoZSBiZW5jaG1hcmtfcmF0
ZSBleGFtcGxlIHdpdGggdGhlIHNhbWUgaG9zdCBjb21wdXRlciBhbmQgWDMxMCBydW5uaW5nIFVI
RCAzLjE1IGFuZCBVSEQgNC41LiBXaXRoIFVIRCA0LjUgYW5kIGhpZ2ggc2FtcGxlIHJhdGVzLCBJ
IGdldCBhbiBlcnJvcjombmJzcDs8c3BhbiBzdHlsZT0iY29sb3I6IHJnYigyMzIsIDE0NSwgNDUp
OyBmb250LWZhbWlseTogTW9uYWNvLCBNZW5sbywgQ29uc29sYXMsICZxdW90O0NvdXJpZXIgTmV3
JnF1b3Q7LCBtb25vc3BhY2U7IG9ycGhhbnM6IDI7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgd2lk
b3dzOiAyOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDIzMiwgMjMyLCAyMzIsIDAuMDQpOyI+dWhk
OjpvcF90aW1lb3V0Og0KIFJmbm9jRXJyb3I6IE9wVGltZW91dDogQ29udHJvbCBvcGVyYXRpb24g
dGltZWQgb3V0IHdhaXRpbmcgZm9yIEFDSzwvc3Bhbj4sIHdoaWNoIHN0b3BzIHRoZSB0ZXN0IGJl
Zm9yZSBpdCBiZWdpbnMgcnVubmluZy4gTG93ZXIgc2FtcGxlIHJhdGVzIGluIFVIRCA0LjUgcnVu
LCBidXQgcHJvZHVjZSBtb3JlIGVycm9ycyAoaW5jbHVkaW5nIHNlcXVlbmNlIGVycm9ycykgdGhh
biB0aGUgc2FtZSBzZXQgdXAgcnVubmluZyBVSEQgMy4xNS4mbmJzcDs8L2Rpdj4NCjxkaXY+PGJy
Pg0KPC9kaXY+DQo8ZGl2PkkgaGF2ZSB0cmllZCByZWZyZXNoaW5nIHRoZSBGUEdBIGltYWdlIGZv
ciBVSEQgNC41IHdpdGggbm8gY2hhbmdlIGluIGJlaGF2aW9yLiBUaGUgYmVoYXZpb3IgaXMgcmVw
bGljYWJsZSB1c2luZyBtdWx0aXBsZSBob3N0IGNvbXB1dGVycyAoTWFjIGFuZCBVYnVudHUpLiBJ
ZiBhbnlvbmUgaGFzIHN1Z2dlc3Rpb25zIG9uIGRlYnVnZ2luZyBzdGVwcywgb3IgcG90ZW50aWFs
IHJlYXNvbnMgd2h5IFVIRCA0LjUgd291bGQgc2VlbSBsYWdneSBjb21wYXJlZA0KIHRvIFVIRCAz
LjE1IChkZXNwaXRlIHJ1bm5pbmcgd2VsbCB3aXRoIFVIRCA0Lnggb24gdGhlIEIyMDVtaW5pKSwg
SSB3b3VsZCBncmVhdGx5IGFwcHJlY2lhdGUgdGhlbS4gSSBzdXNwZWN0IGl0IG1heSBoYXZlIHNv
bWV0aGluZyB0byBkbyB3aXRoIHRoZSBjb21tYW5kIHF1ZXVlIGFuZCBob3cgaXQgZXZvbHZlcyBh
ZnRlciBnZXR0aW5nIGJlaGluZC4mbmJzcDs8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2
PlRoYW5rcyw8L2Rpdj4NCjxkaXY+QW5uYSBCcm9vbWU8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_6BD824DC90034D1790081FFF11B7D4E8stanfordedu_--

--===============9037869398311964947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9037869398311964947==--
