Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMrsKIBIfWlZRQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 31 Jan 2026 01:10:40 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C935CBF804
	for <lists+usrp-users@lfdr.de>; Sat, 31 Jan 2026 01:10:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A91283868EB
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jan 2026 19:10:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769818238; bh=4Q/NIo5UP6HzQ360veQj1+FvpSPTYwBJw0a17z1mDdY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HByxvykx2kgbXxbSRiomh4yfp+gb9EHj1/h8pC86sTHyqZftCtHtEtTkgh7TP2Pb9
	 17U44nzMEXyMGb8VFgwhvP4aaDopPhHBEv23nBH8lup3z9ArKVgl9sn9LwooTHd4gE
	 vF9XhnMGF3xPap3fD+w7qNHyZHre8ytMENmhUmo1/npuNBSPQB3l0T7GrDfTPZNpwU
	 N6FGfKf5iOI29yJIJ6tLPpVLJAzMSjZCPCB8MDS9IvwbTbwapwotMruX83E3EObc+I
	 X/WC9kT++VqUWPYCYta5Sman89r5rsJeeB7zdsTQAJ4Cqrq7wSE0RRSW33fqulJzpL
	 52gykY+ax6FSQ==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0073.outbound.protection.office365.us [23.103.208.73])
	by mm2.emwd.com (Postfix) with ESMTPS id 631AC387393
	for <usrp-users@lists.ettus.com>; Fri, 30 Jan 2026 19:09:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=W5USA.onmicrosoft.com header.i=@W5USA.onmicrosoft.com header.b="If1MjlDY";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=wcQSQ+G+2Vjyuq9lFz4iPIg9KZmeM5OeM9Fsgv7hpPEERuAFSJMVszkuMAwy6TrjjadlJ4Ej9yKKNUh5DENBA6r6AHqxB1nTwJpzk13YAHQiEocm5GIOoHl0JaRIUvBuCP68MCt9vZ9z3ckqFZgONcRNZBdBkP9NluC8KV7bqHsbL6J0RPjH8N5R7mFj6ugyRpOyHVwTXGeR7+RFZ6hWp83OaaSz3MSauzfRA7cwwT/GI1Jl3ZT44p+wwcZldNgL62vozDJSuN20AjLYTEfHPjICwCEd7dXebSpDCQ0x2JOw+j0eLYNZLUHCokZNcw7GA8GInfcUKFDg/LOKLQ6lXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wax2oupHk0sqsylT3y3CJGifJeo2CUglIUp4JAMfL7k=;
 b=f84UukqSaVmwugF83JrOaNHolzv6bu9U4zepqaX5mzS/m83vekI+0/Ktdefjh+0QUGx1Q/Ylj7vt1fUitJsmR66HZlch01WXeXNF/ozsftJxd2+dUfPd5kCGyWDazgK4I+adJbp3HV+L9UxuFSzQ9Sk5MQlinKe1sIFdr+XnTb9o9lE+4ynpN7TbGC8U6mXvOKyMmMw9n0TgN1a3QewX1ne4G7OoMThYEVtlk6G+mAJiA2AjVtLPo6qwTpwV2QoVdYWSrphLN1EF7+ux7oH8S7ASjKFwWWykz6ho+1cjzOXlLh47q7E2xCmAS9txXVv4yDNNXjIbsso0/mbxZM8alg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=w5tech.com; dmarc=pass action=none header.from=w5tech.com;
 dkim=pass header.d=w5tech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=W5USA.onmicrosoft.com;
 s=selector1-W5USA-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wax2oupHk0sqsylT3y3CJGifJeo2CUglIUp4JAMfL7k=;
 b=If1MjlDY5hVjqquxtt4StLwA4TzOyYFcm8qGlDFqL6a8rOpjxlbjmV6Kkc4H9NS/FyxplBCQ7QbSiGmCEzyRI8tsum7Pri54Ude/SDNg5Tw6gapmhGYhPOqDSVV9jqsqzYNLZidjK+V6QTttsSiuFLyqc4NzNHpalwXRbKv1qoxeN0VCBVwmkMNo+WzHr7JwS4q4rshhyTSGOlJE8/00BhmzmnKpIuzhC0AIWioD90Ss+N2pG3h/KcgIX868s2qTJ/rnJGyePt/2N/mLcECt+DJ+f/5YKsw10o4D+PCgeBhdBsEY5tqYj+QumFEH6kpfOciWMyq4T04f5QOu636ymg==
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a8::8)
 by BN0P110MB1195.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:182::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.9; Sat, 31 Jan
 2026 00:09:28 +0000
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b]) by BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b%6]) with mapi id 15.20.9520.014; Sat, 31 Jan 2026
 00:09:28 +0000
From: Tommy Tsui <tommytsui@w5tech.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: DUC set_freq() function
Thread-Index: AdySRDyHTnCaBPuuQBKOQMwNShqlsg==
Date: Sat, 31 Jan 2026 00:09:28 +0000
Message-ID: 
 <BNAP110MB18857ED81B736FAF92F35617949CA@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=w5tech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BNAP110MB1885:EE_|BN0P110MB1195:EE_
x-ms-office365-filtering-correlation-id: ba281970-d1b8-45d9-303e-08de605d0030
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?xBJVMKHw07mvyHU+0HM/Qi5b71q4pQOall7wKpEnYN6ZmqZMGCLHl75aXXwj?=
 =?us-ascii?Q?KQc5mF+B/FEScM+QIVB/pfKZmG1FSZ9Qpu/gWl3tK6bhJO/mWyNI2HvhPFql?=
 =?us-ascii?Q?1WP3+DgawfvJ+oDoYl0ZAJshvTb5nt5Vg/qzb9NJj3pneqM/89uCT1kNruhc?=
 =?us-ascii?Q?SDJR61LsMc60za1V8stfExI/B+9yzu4hAhCeIQVEPGKLK3Os+DP8Th8Bsi1f?=
 =?us-ascii?Q?4+ChS0OgkRrysljsg3cKUar7dMXNIB0VrD2ostNIKr+Zl10a/TRMrj8LbpAL?=
 =?us-ascii?Q?FemVeN0Qe+6EvpLXGi8WbzkquI8GMCJkRykMiDqtLbtv4GUUoLilNLsyrtw7?=
 =?us-ascii?Q?1UL+pV8hlR6/Do/1KKAKnL4DIAV2lYC7cCW3GXgBjfCK+fTtOHU+fSk/C7ln?=
 =?us-ascii?Q?ZxygQ1DOLVrWvWP7LB1EvfVTD8rEONN5Jal/8zgV+ZFIClFZF/ZpEZQbVePd?=
 =?us-ascii?Q?aVb1eI/jFtRS9Etevyu+S0+JBNxWIdWQLCYQDA6q3SuX5tgt94fTJzWLmjYK?=
 =?us-ascii?Q?D56NQrB69w1qtN9G+cR/12qn5IwrJuy1+jqxehDVV8X1TBw4gN08UD6uQLpW?=
 =?us-ascii?Q?NyvPMGqhn/036pCCRqt8aiThBRrTPAmHoqXAmY49ms5lDzHlZmxiNvZGoKGz?=
 =?us-ascii?Q?AnTfs69J4vHotapzX9UoNnItMOz4wzHOF9ezTGmUuRQgjUw7NkmS9gAMvdt+?=
 =?us-ascii?Q?HHv56sUXOfyjDeDFh2V8QGos3WV43zz8i9armm2iKPk0hP8oGn7NLkPr+0d8?=
 =?us-ascii?Q?qrztXqx6D+vEpQZ2q11cm3q1Ur5nH900r8ytlRIcBKlum+YHL0ekefqvjhyF?=
 =?us-ascii?Q?RpiAjmCmAAYG7W4EhjImidItiDhfQxyowU85ACQdxt2zD43f+mk3eSiuJ4N4?=
 =?us-ascii?Q?2Zd6DH8zcfOt8Zx2kp3EbfYrAl8Cdeap3nX9PFzLKMgnxWxxJxHRp8arRF5C?=
 =?us-ascii?Q?j++hx1Dj+DiqYge1u+nWZB7mLBy1GMNkb9GlPYPyEvBTC4idEDhLOsTfYsMz?=
 =?us-ascii?Q?pt7Yyw4glECdr2/UOzR/DsFWpIHe4e41BUzSli168y/B/svYUKifnk5SjEQH?=
 =?us-ascii?Q?1cAf+p+Ps3Fjmfx9BAU2Ce+KHPvta3fdnmhE7w4oNUxhgo4cYL4J1kldvuom?=
 =?us-ascii?Q?/9prAzjBGYhuuACbi6EJznLv8nKHRiM7j6u6lB986jDOINMrFxdPWCXwku7d?=
 =?us-ascii?Q?Xg282ATi8f5oJMT7iUmEydZ3ygXPv2FJCm8CfU1AYI8KPBdaFd+Ce7UmTDQX?=
 =?us-ascii?Q?54DbWTLaWzz3VFdKRMuA0mlRxh2g8YUXwgfYFWhdNjXk70jxzxiIOVp1gIxA?=
 =?us-ascii?Q?0DXJP2r9L7N9dTx//WckxO/98BgMUgRQc6PfYnYQRv/rc6YhXW5JfMSGbhq1?=
 =?us-ascii?Q?tLLhR3egCtd74tBDNjdA0Iix2mZI91mztl9dEeEGmX44f40JBmbI32/gYXkU?=
 =?us-ascii?Q?CKonioCs5Is1V9eAiDRk9uXyuM7w/XHwIGHaRAldSUz+kZHGMTXCmqBnQfr1?=
 =?us-ascii?Q?Pe9FcBfd4G2orMqQnYjziB1DYkBeBx7Dddz5Uqr84WueV2nZqVAFHI/Mx5t/?=
 =?us-ascii?Q?ei9bhZ2dMrcrnHkHNpi3yISO2x0QWKFDSvOyq6Ca1YonoW0mWaaWXvnOFp6u?=
 =?us-ascii?Q?UvJumD+Q+KFEDtdL8e5ZHg4=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?5nTMWNfNJqA6qrywqpDPvwHVCT5UWluBVqoywtow/qv+kYgBlGH8SDBx49UY?=
 =?us-ascii?Q?NS+nG7qKuaKzGorWOj1+IttTNCmYpr98NfL1pBP/r9Qw4tvc8lBWjsUGK1vt?=
 =?us-ascii?Q?FddDGaS3mqqblZq4S1Uf64CZh+S5zybV9j/+lEDfAKbC6wsOtv2thePP6YnP?=
 =?us-ascii?Q?Val7VC+K89QySQWQB577hgAbRxNsllDdP8dV6UxYdGy2E2K44b7wgNx+GXsP?=
 =?us-ascii?Q?YDCYYNiH/NUElpcExEe93YlYx8tvahNjmAY3ct5fTwn6tv7gE50nuUAAYYGv?=
 =?us-ascii?Q?/t35ToNEljf9E+OhiUr5FqNNqA1/bzeobE6sS66k5SM+CiSEUPyqg/rNRwCp?=
 =?us-ascii?Q?JyO8DoYvUUog5a61bfhR1rxIpqHDBLOhW0cnlGdRt74vcQU4B++mGR42rLCT?=
 =?us-ascii?Q?wuoWPto6CHkkSX2viJu/rswg3IOCPkl8/EWoVp2TlVo1mEig1ERY8xP6f++y?=
 =?us-ascii?Q?ZsTYMbusvwye1cAbx2tfmY47SsL8OLsT+/0OGcyqkKDXnjS7I+617tL5FA9c?=
 =?us-ascii?Q?wrEaYqJeBbTGMYcyi7I+YJRB44bXyHsrNX2gGmKpXn/0SX0dEtyYpQ52iUGH?=
 =?us-ascii?Q?dgMhhscTGVqC3XCFn+O6QOlAE85wdJVo/8A3ikuxlhVWWTAU5H5/BLPHaSxR?=
 =?us-ascii?Q?Tq9ZsqD5GapJX+EeQAri4HRAW/dMQlpYgG6gjVaTDA0JyoXmqQtQwMXIvOlD?=
 =?us-ascii?Q?9SnIY0HKeScPR2ZvKWUfHop/7t6Lr4hLeOe8vzcNvUjtMSbAfmqXfjR0i4Dt?=
 =?us-ascii?Q?48qi44wZ/ZaW3jGT0BhSasJt90T3Op2hf3HDuBn/UmBExOPZ78BfjbbLYoi8?=
 =?us-ascii?Q?GFfFpKZszPFr6D73Noo5765Cti5Ms2/sTyXtn8V6qM9/pIma0PVJBe/mbOn5?=
 =?us-ascii?Q?eD2NjDpijG16OBUd8M5VylgVrX7XjV7cUplyJ4O4EDrttTBP7Mh0zSHkGtF6?=
 =?us-ascii?Q?XSbTLPaVQZSBvbHao0/j7oM9R+fcl/EbFjYmF1bQSMdl/jcuDW47CSfSvDRw?=
 =?us-ascii?Q?IzxSRvSxdCyJqC70N6EL2iiFbJGd5Kzvm6BHrOLiOgd2rgaam8VY+1xBI5hk?=
 =?us-ascii?Q?zBByditQDihBpF8rZLTixV8MMy7G7OkwWslrbVsvKrB53hGBRXPMiUsN2osE?=
 =?us-ascii?Q?ohQVDM1icapBELXSP2oyaKkXUn92weR8FRWHa91ae7yQPU8bT9Ar0UWFFABC?=
 =?us-ascii?Q?YtWhL2W0fKcKlRvCTbuyQ3b559Lz8Ur4ys87TeRQIOzNdABs7Rqkcm41/qwX?=
 =?us-ascii?Q?xH8uqG1YsSLV4f4WV0xAs3vKDEqSjrmJEMgMYsjeXRVbRk0c5zfu8I6lXtEX?=
 =?us-ascii?Q?5sY7VvtQzJ8pWbM1m/UBviIGkuxK6uvrny1Rmw3KxUJbOiJ4i+inlqylDeA1?=
 =?us-ascii?Q?ahrHMqghz4Su1oVQt3tVBm1EDm282Mzaz9za+mz90o9k+0kWli7qxUAOAmdd?=
 =?us-ascii?Q?nn2TQz8GbGp88dzOYgSmqcV9nau2vEFbWxina7I8OxvJ4aq8PcAPpR1vMxjd?=
 =?us-ascii?Q?sD1/S0AawnAoZlc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: w5tech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ba281970-d1b8-45d9-303e-08de605d0030
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2026 00:09:28.4176
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7e629b05-df8b-47da-97f7-2ae859536370
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1195
Message-ID-Hash: IJYRIBG6DNE22QIR2KDKFPM4AMH7ZW4O
X-Message-ID-Hash: IJYRIBG6DNE22QIR2KDKFPM4AMH7ZW4O
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DUC set_freq() function
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XN5JAQJHT2EOZCIJ33HLHNJQ4QWAIVVQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7151216013918608155=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[w5tech.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[tommytsui@w5tech.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[W5USA.onmicrosoft.com:s=selector1-W5USA-onmicrosoft-com];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,W5USA.onmicrosoft.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM:mid]
X-Rspamd-Queue-Id: C935CBF804
X-Rspamd-Action: no action

--===============7151216013918608155==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BNAP110MB18857ED81B736FAF92F35617949CABNAP110MB1885NAMP_"

--_000_BNAP110MB18857ED81B736FAF92F35617949CABNAP110MB1885NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi everyone,

I was able to use RFNOC DUC set_freq() function to shift the Tx radio block=
 output frequency successfully on X310, but it worked only when the functio=
n is called before the stream start. After the stream started, the function=
 call has no effect.  Is it a limitation of DUC set_freq() function? The on=
line man page doesn't mention about such limitation.

I want my app to be able to shift the Tx radio block output frequency sligh=
tly at runtime after the RX and TX stream started. Is there any RFNOC funct=
ion capable of doing this?

Thanks,
Thomas
________________________________
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient, any disclosure, distribution, or c=
opying of this e-mail or its attachments is strictly prohibited. If you hav=
e received this e-mail in error, please notify the sender immediately by re=
turn e-mail and permanently delete the e-mail and any attachments.

--_000_BNAP110MB18857ED81B736FAF92F35617949CABNAP110MB1885NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi everyone,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I was able to use R=
FNOC DUC set_freq() function to shift the Tx radio block output frequency s=
uccessfully on X310, but it worked only when the function is called before =
the stream start. After the stream started,
 the function call has no effect. &nbsp;Is it a limitation of DUC set_freq(=
) function? The online man page doesn&#8217;t mention about such limitation=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I want my app to be=
 able to shift the Tx radio block output frequency slightly at runtime afte=
r the RX and TX stream started. Is there any RFNOC function capable of doin=
g this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thomas<o:p></o:p></=
span></p>
</div>
<div style=3D"font-size:8pt; font-family: 'Calibri',sans-serif;">
<hr>
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient,
 any disclosure, distribution, or copying of this e-mail or its attachments=
 is strictly prohibited. If you have received this e-mail in error, please =
notify the sender immediately by return e-mail and permanently delete the e=
-mail and any attachments.</div>
</body>
</html>

--_000_BNAP110MB18857ED81B736FAF92F35617949CABNAP110MB1885NAMP_--

--===============7151216013918608155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7151216013918608155==--
